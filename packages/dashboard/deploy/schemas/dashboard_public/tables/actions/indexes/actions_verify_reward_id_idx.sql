-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_verify_reward_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/verify_reward_id/column

BEGIN;
CREATE INDEX actions_verify_reward_id_idx ON "dashboard_public".actions (verify_reward_id);
COMMIT;
