-- Revert: schemas/dashboard_public/tables/action_items/columns/reward_weight/alterations/alt0000000811 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_items.reward_weight IS NULL;
COMMIT;  

