-- Deploy: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_reward_id_fkey/alterations/alt0000001241 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_reward_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT app_levels_reward_id_fkey ON "dashboard_status_public".app_levels IS NULL;
COMMIT;
