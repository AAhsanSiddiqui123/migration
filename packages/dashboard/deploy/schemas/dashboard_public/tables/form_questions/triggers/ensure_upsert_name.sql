-- Deploy schemas/dashboard_public/tables/form_questions/triggers/ensure_upsert_name to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_form_questions_ensure_upsert_name()
RETURNS TRIGGER AS $$
DECLARE
   form_name text;
   user_question_name text;
BEGIN
    SELECT ref.name FROM dashboard_public.forms AS ref WHERE ref.id = new.form_id
    INTO form_name;
 
    SELECT ref.name FROM dashboard_public.user_questions AS ref WHERE ref.id = new.question_id
    INTO user_question_name;
    
    NEW.name=CONCAT (NULLIF(form_name,''),' - ', NULLIF(user_question_name,''));

    
    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER ensure_upsert_name
BEFORE INSERT OR UPDATE ON dashboard_public.form_questions
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_form_questions_ensure_upsert_name();



COMMIT;
