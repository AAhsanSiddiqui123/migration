-- Revert schemas/dashboard_public/tables/question_templates/alterations/alter_table_add_is_system_defined from pg

BEGIN;

ALTER TABLE dashboard_public.question_templates
    DROP COLUMN is_system_defined;

COMMIT;
