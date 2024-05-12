-- Deploy: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_reward_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_public/tables/reward_payments/table
-- requires: schemas/dashboard_public/tables/rewards/columns/id/column
-- requires: schemas/dashboard_public/tables/reward_payments/columns/reward_id/column

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    ADD CONSTRAINT reward_payments_reward_id_fkey 
    FOREIGN KEY (reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
COMMIT;
