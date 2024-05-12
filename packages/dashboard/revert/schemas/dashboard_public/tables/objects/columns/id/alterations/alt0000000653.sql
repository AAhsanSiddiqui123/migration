-- Revert: schemas/dashboard_public/tables/objects/columns/id/alterations/alt0000000653 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

