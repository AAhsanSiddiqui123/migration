-- Verify schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_climate_interest  on pg

BEGIN;

SELECT climate_interest FROM dashboard_public.track_actions LIMIT 1;

ROLLBACK;
