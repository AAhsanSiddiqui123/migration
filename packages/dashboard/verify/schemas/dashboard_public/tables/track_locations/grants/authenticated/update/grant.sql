-- Verify: schemas/dashboard_public/tables/track_locations/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_locations', 'update', 'authenticated');
COMMIT;  

