-- Revert: schemas/dashboard_public/tables/object_attributes/columns/id/alterations/alt0000000679 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

