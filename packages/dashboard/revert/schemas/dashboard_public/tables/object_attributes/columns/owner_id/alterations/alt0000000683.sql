-- Revert: schemas/dashboard_public/tables/object_attributes/columns/owner_id/alterations/alt0000000683 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

