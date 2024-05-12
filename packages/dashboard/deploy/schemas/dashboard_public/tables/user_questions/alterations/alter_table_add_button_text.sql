-- Deploy schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_button_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE dashboard_public.user_questions
    ADD COLUMN button_text text NULL;

COMMIT;
