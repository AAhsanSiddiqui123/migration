-- Revert: schemas/dashboard_public/tables/actions/columns/verification_reward_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN verification_reward_amount;
COMMIT;  

