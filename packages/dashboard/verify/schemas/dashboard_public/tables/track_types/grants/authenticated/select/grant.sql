-- Verify: schemas/dashboard_public/tables/track_types/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_types', 'select', 'authenticated');
COMMIT;  

