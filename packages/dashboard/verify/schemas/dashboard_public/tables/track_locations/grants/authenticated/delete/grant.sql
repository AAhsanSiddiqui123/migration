-- Verify: schemas/dashboard_public/tables/track_locations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_locations', 'delete', 'authenticated');
COMMIT;  

