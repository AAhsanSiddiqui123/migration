-- Revert: schemas/dashboard_public/tables/user_forms/columns/user_action_item_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN user_action_item_id;
COMMIT;  

