-- Revert: schemas/dashboard_public/tables/app_constants/columns/value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants DROP COLUMN value;
COMMIT;  

