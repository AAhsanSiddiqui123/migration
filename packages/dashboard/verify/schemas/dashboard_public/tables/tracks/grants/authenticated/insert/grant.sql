-- Verify: schemas/dashboard_public/tables/tracks/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tracks', 'insert', 'authenticated');
COMMIT;  

