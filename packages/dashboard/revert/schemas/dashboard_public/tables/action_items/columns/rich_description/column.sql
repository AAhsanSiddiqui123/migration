-- Revert: schemas/dashboard_public/tables/action_items/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN rich_description;
COMMIT;  

