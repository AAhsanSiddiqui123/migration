-- Verify: schemas/dashboard_public/tables/track_actions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_actions', 'update', 'authenticated');
COMMIT;  

