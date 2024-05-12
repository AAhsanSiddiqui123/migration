-- Revert: schemas/dashboard_public/tables/action_item_types/columns/field_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN field_type;
COMMIT;  

