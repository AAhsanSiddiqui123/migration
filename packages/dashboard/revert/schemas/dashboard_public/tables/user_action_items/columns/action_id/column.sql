-- Revert: schemas/dashboard_public/tables/user_action_items/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN action_id;
COMMIT;  

