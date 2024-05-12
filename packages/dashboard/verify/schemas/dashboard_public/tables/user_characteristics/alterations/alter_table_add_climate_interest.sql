-- Verify schemas/dashboard_public/tables/user_characteristics/alterations/alter_table_add_climate_interest  on pg

BEGIN;

SELECT climate_interest FROM dashboard_public.user_characteristics LIMIT 1;

ROLLBACK;
