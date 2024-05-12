-- Revert: schemas/dashboard_public/tables/zip_codes/table from pg

BEGIN;
DROP TABLE "dashboard_public".zip_codes;
COMMIT;  

