-- Revert: schemas/dashboard_public/tables/user_action_items/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN user_id;
COMMIT;  

