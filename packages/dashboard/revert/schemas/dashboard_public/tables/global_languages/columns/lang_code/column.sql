-- Revert: schemas/dashboard_public/tables/global_languages/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages DROP COLUMN lang_code;
COMMIT;  

