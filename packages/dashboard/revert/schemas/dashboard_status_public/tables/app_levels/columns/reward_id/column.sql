-- Revert: schemas/dashboard_status_public/tables/app_levels/columns/reward_id/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels DROP COLUMN reward_id;
COMMIT;  

