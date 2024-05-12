-- Deploy schemas/dashboard_public/tables/form_question_language_variations/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.form_question_language_variations ADD COLUMN updated_by UUID;

CREATE TRIGGER update_form_question_language_variations_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.form_question_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
