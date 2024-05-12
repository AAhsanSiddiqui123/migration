-- Deploy: schemas/dashboard_public/tables/actions/constraints/actions_verify_reward_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_public/tables/rewards/columns/id/column
-- requires: schemas/dashboard_public/tables/actions/columns/verify_reward_id/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ADD CONSTRAINT actions_verify_reward_id_fkey 
    FOREIGN KEY (verify_reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
