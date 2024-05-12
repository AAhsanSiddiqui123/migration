-- Verify schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_data  on pg

BEGIN;

SELECT data FROM dashboard_public.user_actions LIMIT 1;

ROLLBACK;
