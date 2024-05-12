-- Verify: schemas/dashboard_public/tables/action_goals/indexes/action_goals_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_goals', 'action_goals_owner_id_idx');
COMMIT;  

