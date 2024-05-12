-- Revert: schemas/dashboard_public/tables/action_items/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN description;
COMMIT;  

