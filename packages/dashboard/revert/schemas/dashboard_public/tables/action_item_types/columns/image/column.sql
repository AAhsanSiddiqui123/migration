-- Revert: schemas/dashboard_public/tables/action_item_types/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN image;
COMMIT;  

