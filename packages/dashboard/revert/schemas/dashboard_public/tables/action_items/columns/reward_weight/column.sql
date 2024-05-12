-- Revert: schemas/dashboard_public/tables/action_items/columns/reward_weight/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN reward_weight;
COMMIT;  

