-- Revert: schemas/dashboard_public/tables/action_variations/indexes/action_variations_action_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_variations_action_id_idx;
COMMIT;  

