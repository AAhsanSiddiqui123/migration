-- Deploy: schemas/dashboard_public/tables/action_items/columns/reward_weight/alterations/alt0000000811 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/columns/reward_weight/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_items.reward_weight IS E'used as a fraction against action.reward_amount';
COMMIT;
