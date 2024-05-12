-- Revert: schemas/dashboard_public/tables/groups/indexes/groups_bounds_idx from pg

BEGIN;
DROP INDEX "dashboard_public".groups_bounds_idx;
COMMIT;  

