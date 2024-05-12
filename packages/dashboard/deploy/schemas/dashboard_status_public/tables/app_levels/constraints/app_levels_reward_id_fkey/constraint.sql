-- Deploy: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_reward_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_status_public/tables/app_levels/table
-- requires: schemas/dashboard_public/tables/rewards/columns/id/column
-- requires: schemas/dashboard_status_public/tables/app_levels/columns/reward_id/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels 
    ADD CONSTRAINT app_levels_reward_id_fkey 
    FOREIGN KEY (reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
