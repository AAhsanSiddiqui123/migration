-- Verify: schemas/dashboard_public/tables/goals/indexes/goals_parent_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.goals', 'goals_parent_id_idx');
COMMIT;  

