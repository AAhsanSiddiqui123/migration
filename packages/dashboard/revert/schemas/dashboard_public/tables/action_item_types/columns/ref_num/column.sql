-- Revert: schemas/dashboard_public/tables/action_item_types/columns/ref_num/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN ref_num;
COMMIT;  

