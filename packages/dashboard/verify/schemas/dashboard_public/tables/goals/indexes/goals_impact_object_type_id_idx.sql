-- Verify: schemas/dashboard_public/tables/goals/indexes/goals_impact_object_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.goals', 'goals_impact_object_type_id_idx');
COMMIT;  

