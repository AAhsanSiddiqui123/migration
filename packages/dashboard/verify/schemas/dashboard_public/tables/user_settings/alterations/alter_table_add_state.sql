-- Verify schemas/dashboard_public/tables/user_settings/alterations/alter_table_add_state  on pg

BEGIN;

SELECT state FROM dashboard_public.user_settings LIMIT 1;

ROLLBACK;
