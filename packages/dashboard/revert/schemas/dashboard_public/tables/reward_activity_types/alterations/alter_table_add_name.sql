-- Revert schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_name from pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
    DROP COLUMN name;

COMMIT;
