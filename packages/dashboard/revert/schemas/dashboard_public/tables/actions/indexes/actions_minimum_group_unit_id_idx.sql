-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_minimum_group_unit_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_minimum_group_unit_id_idx;
COMMIT;  

