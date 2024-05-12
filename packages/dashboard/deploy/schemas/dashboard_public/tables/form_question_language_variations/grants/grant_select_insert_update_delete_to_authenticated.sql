-- Deploy schemas/dashboard_public/tables/form_question_language_variations/grants/grant_select_insert_update_delete_to_authenticated to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.form_question_language_variations TO authenticated;

COMMIT;
