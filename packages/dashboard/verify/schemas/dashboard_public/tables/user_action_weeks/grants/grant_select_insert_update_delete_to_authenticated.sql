-- Verify schemas/dashboard_public/tables/user_action_weeks/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.user_action_weeks', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_action_weeks', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_action_weeks', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_action_weeks', 'DELETE');
  
ROLLBACK;
