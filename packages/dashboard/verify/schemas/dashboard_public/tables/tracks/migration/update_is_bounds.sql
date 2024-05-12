-- Verify dashboard:schemas/dashboard_public/tables/tracks/migration/update_is_bounds on pg

BEGIN;

SELECT is_bounds FROM dashboard_public.tracks LIMIT 1;

ROLLBACK;
