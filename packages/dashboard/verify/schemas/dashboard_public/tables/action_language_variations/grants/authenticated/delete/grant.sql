-- Verify: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_language_variations', 'delete', 'authenticated');
COMMIT;  

