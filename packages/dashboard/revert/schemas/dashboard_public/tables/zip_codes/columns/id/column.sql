-- Revert: schemas/dashboard_public/tables/zip_codes/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes DROP COLUMN id;
COMMIT;  

