-- Revert: schemas/dashboard_public/tables/data_tags/table from pg

BEGIN;
DROP TABLE "dashboard_public".data_tags;
COMMIT;  

