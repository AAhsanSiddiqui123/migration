-- Deploy schemas/dashboard_public/tables/form_question_language_variations/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.form_question_language_variations ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.form_question_language_variations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.form_question_language_variations ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_form_question_language_variations_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.form_question_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
