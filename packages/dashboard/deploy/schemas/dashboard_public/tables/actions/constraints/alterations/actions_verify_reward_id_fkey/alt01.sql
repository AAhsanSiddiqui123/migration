-- Deploy dashboard:schemas/dashboard_public/tables/actions/constraints/alterations/actions_verify_reward_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_public".actions 
    DROP CONSTRAINT actions_verify_reward_id_fkey;

ALTER TABLE "dashboard_public".actions 
    ADD CONSTRAINT actions_verify_reward_id_fkey 
    FOREIGN KEY (verify_reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
