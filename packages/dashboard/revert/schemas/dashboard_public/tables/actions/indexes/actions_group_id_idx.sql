-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_group_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_group_id_idx;
COMMIT;  

