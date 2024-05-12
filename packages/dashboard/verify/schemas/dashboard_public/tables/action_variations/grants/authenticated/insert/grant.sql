-- Verify: schemas/dashboard_public/tables/action_variations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_variations', 'insert', 'authenticated');
COMMIT;  

