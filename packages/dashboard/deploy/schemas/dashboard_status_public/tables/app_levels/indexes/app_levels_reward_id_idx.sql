-- Deploy: schemas/dashboard_status_public/tables/app_levels/indexes/app_levels_reward_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table
-- requires: schemas/dashboard_status_public/tables/app_levels/columns/reward_id/column

BEGIN;
CREATE INDEX app_levels_reward_id_idx ON "dashboard_status_public".app_levels (reward_id);
COMMIT;
