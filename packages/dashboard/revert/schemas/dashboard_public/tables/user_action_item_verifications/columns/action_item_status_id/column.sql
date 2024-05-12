-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/action_item_status_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications DROP COLUMN action_item_status_id;
COMMIT;  

