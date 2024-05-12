-- Deploy schemas/dashboard_public/tables/user_settings/triggers/upsert_user_question_template_answers_user_settings to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_upsert_user_question_template_answers_user_settings()
RETURNS TRIGGER AS $$
BEGIN

    IF NEW.first_name IS NOT NULL THEN
        INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.user_id,'dc0cabd6-3eca-4277-8f70-2f40420adc5b',trim(NEW.first_name))
                ON CONFLICT(user_id, question_template_id)
                DO 
                UPDATE SET answer = NEW.first_name;
    END IF;

    
    IF NEW.last_name IS NOT NULL THEN

        INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.user_id,'dca4a569-e04c-488a-cd32-af556ea7cb0e',trim(NEW.last_name))
                ON CONFLICT(user_id, question_template_id)
                DO 
                UPDATE SET answer = NEW.last_name;
    END IF;

RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER upsert_user_question_template_answers_user_settings
AFTER INSERT OR UPDATE ON dashboard_public.user_settings
FOR EACH ROW
-- WHEN (NEW.first_name IS DISTINCT FROM OLD.first_name OR NEW.last_name IS DISTINCT FROM OLD.last_name)
EXECUTE PROCEDURE dashboard_private.tg_upsert_user_question_template_answers_user_settings ();



COMMIT;
