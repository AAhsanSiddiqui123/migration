-- Deploy schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_question_title to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    ADD COLUMN question_title text NULL;

COMMIT;
