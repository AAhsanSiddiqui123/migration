-- Verify: schemas/dashboard_public/tables/group_goals/indexes/group_goals_group_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.group_goals', 'group_goals_group_id_idx');
COMMIT;  

