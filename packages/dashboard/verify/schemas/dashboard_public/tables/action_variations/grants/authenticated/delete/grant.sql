-- Verify: schemas/dashboard_public/tables/action_variations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_variations', 'delete', 'authenticated');
COMMIT;  

