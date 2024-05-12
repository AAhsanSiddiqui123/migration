-- Verify schemas/dashboard_public/tables/user_action_weeks/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.user_action_weeks');

ROLLBACK;
