-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_search_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_search_idx;
COMMIT;  

