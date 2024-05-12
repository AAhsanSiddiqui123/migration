-- Verify dashboard:schemas/dashboard_public/tables/users/grants/grant_select_to_authorized on pg

BEGIN;

  SELECT has_table_privilege('authorized', 'dashboard_public.users', 'SELECT');

ROLLBACK;
