-- Revert: schemas/dashboard_public/tables/global_languages/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages DROP COLUMN name;
COMMIT;  

