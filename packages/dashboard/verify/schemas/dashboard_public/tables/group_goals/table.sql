-- Verify: schemas/dashboard_public/tables/group_goals/table on pg

BEGIN;
SELECT verify_table('dashboard_public.group_goals');
COMMIT;  

