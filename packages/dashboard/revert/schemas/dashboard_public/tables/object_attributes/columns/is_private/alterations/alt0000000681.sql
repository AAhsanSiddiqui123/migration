-- Revert: schemas/dashboard_public/tables/object_attributes/columns/is_private/alterations/alt0000000681 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

