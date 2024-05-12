-- Verify: schemas/dashboard_public/tables/track_language_variations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_language_variations', 'insert', 'authenticated');
COMMIT;  

