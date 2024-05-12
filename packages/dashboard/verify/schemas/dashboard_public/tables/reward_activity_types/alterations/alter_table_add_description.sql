-- Verify schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_description  on pg

BEGIN;

SELECT description FROM dashboard_public.reward_activity_types LIMIT 1;

ROLLBACK;
