-- Deploy schemas/dashboard_public/tables/form_question_language_variations/triggers/ensure_update_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;



CREATE FUNCTION dashboard_private.form_question_language_variations_update_owner_id()
RETURNS TRIGGER AS $$
BEGIN
        SELECT ref.owner_id FROM dashboard_public.form_questions AS ref WHERE ref.id = new.form_question_id
        INTO new.owner_id;
        RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER ensure_update_owner_id
BEFORE UPDATE ON dashboard_public.form_question_language_variations
FOR EACH ROW
WHEN (old.form_question_id IS DISTINCT FROM new.form_question_id OR old.owner_id IS DISTINCT FROM new.owner_id)
EXECUTE PROCEDURE dashboard_private.form_question_language_variations_update_owner_id();



COMMIT;
