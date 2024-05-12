-- Verify schemas/dashboard_public/tables/app_constants/grants/grant_select_to_anonymous on pg

BEGIN;

  SELECT has_table_privilege('anonymous', 'dashboard_public.app_constants', 'SELECT');
  
ROLLBACK;
