-- Verify schemas/dashboard_public/tables/user_settings/alterations/alter_table_add_neighbourhood  on pg

BEGIN;

SELECT neighbourhood FROM dashboard_public.user_settings LIMIT 1;

ROLLBACK;
