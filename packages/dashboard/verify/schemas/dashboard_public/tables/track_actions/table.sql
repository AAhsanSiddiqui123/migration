-- Verify: schemas/dashboard_public/tables/track_actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.track_actions');
COMMIT;  

