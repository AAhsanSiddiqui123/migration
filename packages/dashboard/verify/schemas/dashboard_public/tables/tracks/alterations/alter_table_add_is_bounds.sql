-- Verify schemas/dashboard_public/tables/tracks/alterations/alter_table_add_is_bounds  on pg

BEGIN;

SELECT is_bounds FROM dashboard_public.tracks LIMIT 1;

ROLLBACK;
