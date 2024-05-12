-- Revert: schemas/dashboard_public/tables/global_languages/table from pg

BEGIN;
DROP TABLE "dashboard_public".global_languages;
COMMIT;  

