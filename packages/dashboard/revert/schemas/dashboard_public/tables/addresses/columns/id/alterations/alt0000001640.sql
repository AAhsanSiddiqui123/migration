-- Revert: schemas/dashboard_public/tables/addresses/columns/id/alterations/alt0000001640 from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

