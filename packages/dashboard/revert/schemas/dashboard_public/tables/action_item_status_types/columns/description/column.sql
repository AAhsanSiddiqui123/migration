-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types DROP COLUMN description;
COMMIT;  

