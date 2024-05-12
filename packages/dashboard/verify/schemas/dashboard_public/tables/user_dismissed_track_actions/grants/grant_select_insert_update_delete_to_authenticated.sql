-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.user_dismissed_track_actions', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_dismissed_track_actions', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_dismissed_track_actions', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_dismissed_track_actions', 'DELETE');
  
ROLLBACK;
