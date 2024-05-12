-- Revert schemas/dashboard_public/tables/user_settings/alterations/alter_table_add_state from pg

BEGIN;

ALTER TABLE dashboard_public.user_settings
    DROP COLUMN state;

COMMIT;
