-- Verify: schemas/dashboard_public/tables/group_goals/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_goals', 'update', 'authenticated');
COMMIT;  

