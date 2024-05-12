-- Deploy schemas/dashboard_public/tables/emails/triggers/upsert_user_question_template_answers_emails to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_upsert_user_question_template_answers_emails()
RETURNS TRIGGER AS $$
BEGIN

IF NEW.email IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dc0cb77e-a38c-4e99-2694-b6dcc3b99c5b',trim(NEW.email))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.email;
END IF;

RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER upsert_user_question_template_answers_emails
AFTER INSERT OR UPDATE ON dashboard_public.emails
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_upsert_user_question_template_answers_emails ();



COMMIT;
