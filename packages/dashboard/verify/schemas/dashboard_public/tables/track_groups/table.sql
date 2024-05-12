-- Verify: schemas/dashboard_public/tables/track_groups/table on pg

BEGIN;
SELECT verify_table('dashboard_public.track_groups');
COMMIT;  

