-- Verify schemas/dashboard_public/tables/progress_levels/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_levels', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_levels', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_levels', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_levels', 'DELETE');
  
ROLLBACK;
