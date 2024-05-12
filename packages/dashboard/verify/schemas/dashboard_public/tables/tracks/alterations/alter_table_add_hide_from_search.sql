-- Verify schemas/dashboard_public/tables/tracks/alterations/alter_table_add_hide_from_search  on pg

BEGIN;

SELECT hide_from_search FROM dashboard_public.tracks LIMIT 1;

ROLLBACK;
