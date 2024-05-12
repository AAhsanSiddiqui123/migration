-- Revert: schemas/dashboard_public/tables/actions/columns/reward_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN reward_amount;
COMMIT;  

