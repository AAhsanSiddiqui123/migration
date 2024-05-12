-- Verify: schemas/dashboard_public/tables/related_actions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.related_actions', 'update', 'authenticated');
COMMIT;  

