-- Revert: schemas/dashboard_public/tables/form_types/columns/ref_num/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types DROP COLUMN ref_num;
COMMIT;  

