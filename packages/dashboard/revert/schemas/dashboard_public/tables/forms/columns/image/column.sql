-- Revert: schemas/dashboard_public/tables/forms/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN image;
COMMIT;  

