-- Deploy schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_button_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    ADD COLUMN button_text text NULL;

COMMIT;
