-- Verify: schemas/dashboard_public/tables/track_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.track_types');
COMMIT;  

