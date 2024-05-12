-- Verify: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_language_variations', 'insert', 'authenticated');
COMMIT;  

