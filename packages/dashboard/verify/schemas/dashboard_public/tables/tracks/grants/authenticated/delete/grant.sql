-- Verify: schemas/dashboard_public/tables/tracks/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tracks', 'delete', 'authenticated');
COMMIT;  

