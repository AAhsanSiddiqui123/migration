-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_location_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_location_idx;
COMMIT;  

