-- Revert schemas/dashboard_public/tables/action_items/alterations/alter_table_add_is_active from pg

BEGIN;

ALTER TABLE dashboard_public.action_items
    DROP COLUMN is_active;

COMMIT;
