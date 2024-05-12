-- Deploy schemas/dashboard_public/tables/user_answers/triggers/upsert_user_question_template_answers to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table

BEGIN;

DROP TRIGGER upsert_user_question_template_answers ON dashboard_public.user_answers;
DROP FUNCTION dashboard_private.tg_upsert_user_question_template_answers; 


CREATE FUNCTION dashboard_private.tg_upsert_user_question_template_answers()
RETURNS TRIGGER AS $$
DECLARE 
v_template_id uuid;
BEGIN
        SELECT template_id FROM dashboard_public.user_questions WHERE id = NEW.question_id
        INTO
        v_template_id;
        IF v_template_id IS NOT NULL THEN
            INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.user_id,v_template_id,trim(NEW.text))
            ON CONFLICT(user_id, question_template_id)
            DO 
            UPDATE SET answer = NEW.text;
        END IF;

 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER upsert_user_question_template_answers
AFTER INSERT OR UPDATE ON dashboard_public.user_answers
FOR EACH ROW
WHEN (NEW.text IS NOT NULL AND trim(NEW.text) != '')
EXECUTE PROCEDURE dashboard_private.tg_upsert_user_question_template_answers ();



COMMIT;
