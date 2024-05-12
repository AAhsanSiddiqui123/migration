-- Revert schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_rejected from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_items
    DROP COLUMN rejected;

COMMIT;
