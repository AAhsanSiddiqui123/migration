-- Verify: schemas/dashboard_public/tables/related_actions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.related_actions', 'insert', 'authenticated');
COMMIT;  

