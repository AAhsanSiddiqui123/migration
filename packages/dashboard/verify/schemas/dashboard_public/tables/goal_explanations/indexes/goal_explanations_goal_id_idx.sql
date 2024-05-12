-- Verify: schemas/dashboard_public/tables/goal_explanations/indexes/goal_explanations_goal_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.goal_explanations', 'goal_explanations_goal_id_idx');
COMMIT;  

