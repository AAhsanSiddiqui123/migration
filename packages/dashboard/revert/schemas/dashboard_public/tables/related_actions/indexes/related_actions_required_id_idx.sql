-- Revert: schemas/dashboard_public/tables/related_actions/indexes/related_actions_required_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".related_actions_required_id_idx;
COMMIT;  

