-- Verify: schemas/dashboard_public/tables/track_groups/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_groups', 'update', 'authenticated');
COMMIT;  

