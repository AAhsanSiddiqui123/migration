-- Deploy schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_name to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    ADD COLUMN name text NULL;

COMMIT;
