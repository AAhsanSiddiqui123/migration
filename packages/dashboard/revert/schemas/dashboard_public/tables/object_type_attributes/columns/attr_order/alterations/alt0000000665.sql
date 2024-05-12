-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/attr_order/alterations/alt0000000665 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN attr_order DROP DEFAULT;

COMMIT;  

