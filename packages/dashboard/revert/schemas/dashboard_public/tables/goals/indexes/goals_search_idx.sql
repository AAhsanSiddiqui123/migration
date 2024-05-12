-- Revert: schemas/dashboard_public/tables/goals/indexes/goals_search_idx from pg

BEGIN;
DROP INDEX "dashboard_public".goals_search_idx;
COMMIT;  

