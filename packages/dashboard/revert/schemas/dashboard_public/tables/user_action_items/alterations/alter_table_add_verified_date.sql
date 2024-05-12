-- Revert schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_verified_date from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_items
    DROP COLUMN verified_date;

COMMIT;
