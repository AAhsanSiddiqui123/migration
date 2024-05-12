-- Verify: schemas/dashboard_public/tables/tracks/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tracks', 'update', 'authenticated');
COMMIT;  

