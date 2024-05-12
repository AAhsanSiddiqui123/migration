-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_is_private_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_is_private_idx;
COMMIT;  

