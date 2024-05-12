-- Revert: schemas/dashboard_public/tables/action_items/columns/rich_completion_confirmation/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN rich_completion_confirmation;
COMMIT;  

