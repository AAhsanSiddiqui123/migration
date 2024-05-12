-- Verify schemas/dashboard_public/tables/progress_level_images/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_images', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_images', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_images', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_images', 'DELETE');
  
ROLLBACK;
