-- Deploy schemas/dashboard_public/tables/form_questions/alterations/alter_table_add_page_description to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE dashboard_public.form_questions
    ADD COLUMN page_description text NULL;

COMMIT;
