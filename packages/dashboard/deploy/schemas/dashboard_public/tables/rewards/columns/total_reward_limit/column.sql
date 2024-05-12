-- Deploy: schemas/dashboard_public/tables/rewards/columns/total_reward_limit/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards ADD COLUMN total_reward_limit numeric;
COMMIT;
