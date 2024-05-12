-- Revert: schemas/dashboard_public/tables/actions/columns/verify_reward_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN verify_reward_id;
COMMIT;  

