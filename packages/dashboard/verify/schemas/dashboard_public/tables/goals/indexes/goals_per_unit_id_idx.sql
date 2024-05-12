-- Verify: schemas/dashboard_public/tables/goals/indexes/goals_per_unit_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.goals', 'goals_per_unit_id_idx');
COMMIT;  

