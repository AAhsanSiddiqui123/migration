-- Revert schemas/dashboard_public/tables/action_language_variations/alterations/alter_table_add_name from pg

BEGIN;

ALTER TABLE dashboard_public.action_language_variations
    DROP COLUMN name;

COMMIT;
