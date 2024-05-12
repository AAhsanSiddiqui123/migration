-- Verify schemas/dashboard_public/tables/user_rewards/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.user_rewards', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_rewards', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_rewards', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_rewards', 'DELETE');
  
ROLLBACK;
