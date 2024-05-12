-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_verify_reward_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_verify_reward_id_idx;
COMMIT;  

