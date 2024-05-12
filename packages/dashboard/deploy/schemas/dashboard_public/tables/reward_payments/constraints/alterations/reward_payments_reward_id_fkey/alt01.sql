-- Deploy dashboard:schemas/dashboard_public/tables/reward_payments/constraints/alterations/reward_payments_reward_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    DROP CONSTRAINT reward_payments_reward_id_fkey;

ALTER TABLE "dashboard_public".reward_payments 
    ADD CONSTRAINT reward_payments_reward_id_fkey 
    FOREIGN KEY (reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
