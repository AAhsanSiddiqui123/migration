-- Verify: schemas/dashboard_public/tables/related_actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.related_actions');
COMMIT;  

