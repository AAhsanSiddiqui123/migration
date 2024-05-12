-- Verify schemas/dashboard_public/tables/reward_activity_types/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.reward_activity_types');

ROLLBACK;
