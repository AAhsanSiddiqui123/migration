-- Verify: schemas/dashboard_public/tables/track_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.track_language_variations');
COMMIT;  

