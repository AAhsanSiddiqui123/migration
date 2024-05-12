-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_header  on pg

BEGIN;

SELECT header FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
