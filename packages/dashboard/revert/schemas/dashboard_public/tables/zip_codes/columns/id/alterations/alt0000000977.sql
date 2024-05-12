-- Revert: schemas/dashboard_public/tables/zip_codes/columns/id/alterations/alt0000000977 from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

