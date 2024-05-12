-- Revert: schemas/dashboard_public/tables/forms/columns/type_id/alterations/alt0000001326 from pg

BEGIN;


ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN type_id DROP NOT NULL;


COMMIT;  

