-- Revert: schemas/dashboard_public/tables/actions/columns/reward_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN reward_id;
COMMIT;  

