-- Revert: schemas/dashboard_public/tables/object_attributes/columns/object_id/alterations/alt0000000687 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN object_id DROP NOT NULL;


COMMIT;  

