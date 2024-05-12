-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_bounds_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_bounds_idx;
COMMIT;  

