-- Verify: schemas/dashboard_public/tables/track_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_types', 'update', 'authenticated');
COMMIT;  

