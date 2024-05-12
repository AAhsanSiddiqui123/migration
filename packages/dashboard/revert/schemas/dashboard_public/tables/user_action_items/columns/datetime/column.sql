-- Revert: schemas/dashboard_public/tables/user_action_items/columns/datetime/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN datetime;
COMMIT;  

