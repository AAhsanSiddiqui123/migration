-- Revert: schemas/dashboard_public/tables/action_items/columns/start_date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN start_date;
COMMIT;  

