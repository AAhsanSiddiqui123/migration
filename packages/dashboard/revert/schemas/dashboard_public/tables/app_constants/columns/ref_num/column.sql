-- Revert: schemas/dashboard_public/tables/app_constants/columns/ref_num/column from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants DROP COLUMN ref_num;
COMMIT;  

