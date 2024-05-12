-- Verify schemas/dashboard_public/tables/user_settings/alterations/alter_table_add_timezone  on pg

BEGIN;

SELECT timezone FROM dashboard_public.user_settings LIMIT 1;

ROLLBACK;
