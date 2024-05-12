-- Verify dashboard:schemas/dashboard_public/tables/user_settings/grants/grant_select_to_authorized on pg

BEGIN;

  SELECT has_table_privilege('authorized', 'dashboard_public.user_settings', 'SELECT');

ROLLBACK;
