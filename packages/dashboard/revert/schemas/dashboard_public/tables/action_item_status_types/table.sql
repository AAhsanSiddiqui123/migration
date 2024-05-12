-- Revert: schemas/dashboard_public/tables/action_item_status_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_item_status_types;
COMMIT;  

