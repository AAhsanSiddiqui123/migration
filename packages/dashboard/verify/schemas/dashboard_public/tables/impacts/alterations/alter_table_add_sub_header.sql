-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_sub_header  on pg

BEGIN;

SELECT sub_header FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
