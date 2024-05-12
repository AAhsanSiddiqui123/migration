-- Deploy schemas/dashboard_public/tables/question_templates/alterations/alter_table_add_is_system_defined to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE dashboard_public.question_templates
    ADD COLUMN is_system_defined boolean DEFAULT false;

COMMIT;
