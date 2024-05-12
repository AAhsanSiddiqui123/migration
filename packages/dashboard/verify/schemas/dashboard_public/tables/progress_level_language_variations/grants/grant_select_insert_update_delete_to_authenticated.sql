-- Verify schemas/dashboard_public/tables/progress_level_language_variations/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_language_variations', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_language_variations', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_language_variations', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.progress_level_language_variations', 'DELETE');
  
ROLLBACK;
