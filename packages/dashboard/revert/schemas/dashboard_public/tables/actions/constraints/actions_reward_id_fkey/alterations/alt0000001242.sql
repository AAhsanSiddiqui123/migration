-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_reward_id_fkey/alterations/alt0000001242 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_reward_id_fkey ON "dashboard_public".actions IS NULL;
COMMIT;  

