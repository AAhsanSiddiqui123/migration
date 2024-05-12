-- Verify dashboard:schemas/dashboard_public/tables/user_action_weeks/grants/grant_select_to_authorized on pg

BEGIN;

  SELECT has_table_privilege('authorized', 'dashboard_public.user_action_weeks', 'SELECT');

ROLLBACK;
