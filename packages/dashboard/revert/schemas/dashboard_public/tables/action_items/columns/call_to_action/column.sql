-- Revert: schemas/dashboard_public/tables/action_items/columns/call_to_action/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN call_to_action;
COMMIT;  

