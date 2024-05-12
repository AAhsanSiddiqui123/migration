-- Verify: schemas/dashboard_public/tables/goals/indexes/goals_search_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.goals', 'goals_search_idx');
COMMIT;  

