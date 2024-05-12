-- Deploy schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_error_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE dashboard_public.user_questions
    ADD COLUMN error_text text NULL;

COMMIT;
