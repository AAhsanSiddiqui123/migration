-- Verify schemas/dashboard_public/tables/groups/alterations/alter_table_add_is_admin  on pg

BEGIN;

SELECT is_admin FROM dashboard_public.groups LIMIT 1;

ROLLBACK;
