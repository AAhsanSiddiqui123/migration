-- Revert: schemas/dashboard_public/tables/objects/columns/type_id/alterations/alt0000000659 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN type_id DROP NOT NULL;


COMMIT;  

