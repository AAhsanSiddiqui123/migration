-- Verify: schemas/dashboard_public/tables/related_actions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.related_actions', 'select', 'authenticated');
COMMIT;  

