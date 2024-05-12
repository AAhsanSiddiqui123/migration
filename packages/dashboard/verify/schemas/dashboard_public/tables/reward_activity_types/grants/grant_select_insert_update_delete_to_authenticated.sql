-- Verify schemas/dashboard_public/tables/reward_activity_types/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.reward_activity_types', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.reward_activity_types', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.reward_activity_types', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.reward_activity_types', 'DELETE');
  
ROLLBACK;
