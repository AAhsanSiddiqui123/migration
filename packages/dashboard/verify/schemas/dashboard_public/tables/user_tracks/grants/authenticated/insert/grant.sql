-- Verify: schemas/dashboard_public/tables/user_tracks/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_tracks', 'insert', 'authenticated');
COMMIT;  

