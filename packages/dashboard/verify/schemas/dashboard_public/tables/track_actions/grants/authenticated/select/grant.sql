-- Verify: schemas/dashboard_public/tables/track_actions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.track_actions', 'select', 'authenticated');
COMMIT;  

