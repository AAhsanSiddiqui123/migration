-- Verify schemas/dashboard_public/tables/user_action_weeks/indexes/user_action_weeks_user_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.user_action_weeks', 'user_action_weeks_user_id_idx');

ROLLBACK;
