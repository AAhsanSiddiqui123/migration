-- Revert: schemas/dashboard_public/tables/action_items/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_items;
COMMIT;  

