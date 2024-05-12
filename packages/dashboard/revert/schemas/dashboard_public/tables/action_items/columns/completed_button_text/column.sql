-- Revert: schemas/dashboard_public/tables/action_items/columns/completed_button_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN completed_button_text;
COMMIT;  

