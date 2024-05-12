-- Verify schemas/dashboard_public/tables/reward_activity_types/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.reward_activity_types');

ROLLBACK;
