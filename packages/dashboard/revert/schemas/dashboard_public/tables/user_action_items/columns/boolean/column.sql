-- Revert: schemas/dashboard_public/tables/user_action_items/columns/boolean/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN "boolean";
COMMIT;  

