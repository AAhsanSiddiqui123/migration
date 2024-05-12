-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_owner_id_idx;
COMMIT;  

