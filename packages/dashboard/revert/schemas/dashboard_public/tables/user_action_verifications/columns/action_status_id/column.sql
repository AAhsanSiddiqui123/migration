-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/action_status_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications DROP COLUMN action_status_id;
COMMIT;  

