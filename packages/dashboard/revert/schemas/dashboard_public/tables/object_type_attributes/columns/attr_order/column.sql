-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/attr_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN attr_order;
COMMIT;  

