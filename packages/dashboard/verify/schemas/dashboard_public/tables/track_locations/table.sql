-- Verify: schemas/dashboard_public/tables/track_locations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.track_locations');
COMMIT;  

