-- Deploy dashboard:schemas/dashboard_public/tables/reward_payments/constraints/alterations/reward_payments_action_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    DROP CONSTRAINT reward_payments_action_id_fkey;

ALTER TABLE "dashboard_public".reward_payments 
    ADD CONSTRAINT reward_payments_action_id_fkey 
    FOREIGN KEY (action_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
