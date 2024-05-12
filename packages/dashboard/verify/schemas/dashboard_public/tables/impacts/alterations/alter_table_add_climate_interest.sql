-- Verify schemas/dashboard_public/tables/impacts/alterations/alter_table_add_climate_interest  on pg

BEGIN;

SELECT climate_interest FROM dashboard_public.impacts LIMIT 1;

ROLLBACK;
