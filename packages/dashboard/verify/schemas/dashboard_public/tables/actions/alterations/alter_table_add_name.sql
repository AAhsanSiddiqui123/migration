-- Verify schemas/dashboard_public/tables/actions/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.actions LIMIT 1;

ROLLBACK;
