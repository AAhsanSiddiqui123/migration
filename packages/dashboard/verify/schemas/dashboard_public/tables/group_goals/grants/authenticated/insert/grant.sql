-- Verify: schemas/dashboard_public/tables/group_goals/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_goals', 'insert', 'authenticated');
COMMIT;  

