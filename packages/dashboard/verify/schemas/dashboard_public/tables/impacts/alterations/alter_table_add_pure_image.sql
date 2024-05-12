-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_pure_image  on pg

BEGIN;

SELECT pure_image FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
