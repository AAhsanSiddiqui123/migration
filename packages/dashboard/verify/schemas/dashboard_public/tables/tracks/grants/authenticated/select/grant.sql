-- Verify: schemas/dashboard_public/tables/tracks/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tracks', 'select', 'authenticated');
COMMIT;  

