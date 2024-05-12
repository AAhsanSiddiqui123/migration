-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/id/alterations/alt0000000663 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

