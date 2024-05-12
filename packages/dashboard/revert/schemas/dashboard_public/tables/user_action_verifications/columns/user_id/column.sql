-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications DROP COLUMN user_id;
COMMIT;  

