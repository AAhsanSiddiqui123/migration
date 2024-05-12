-- Revert: schemas/dashboard_public/tables/action_items/columns/end_date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN end_date;
COMMIT;  

