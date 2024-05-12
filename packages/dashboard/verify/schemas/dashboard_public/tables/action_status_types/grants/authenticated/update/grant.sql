-- Verify: schemas/dashboard_public/tables/action_status_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_status_types', 'update', 'authenticated');
COMMIT;  

