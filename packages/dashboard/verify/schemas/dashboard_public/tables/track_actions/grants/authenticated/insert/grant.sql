-- Verify: schemas/dashboard_public/tables/track_actions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_actions', 'insert', 'authenticated');
COMMIT;  

