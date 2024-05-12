-- Revert: schemas/dashboard_public/tables/app_constants/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants DROP COLUMN name;
COMMIT;  

