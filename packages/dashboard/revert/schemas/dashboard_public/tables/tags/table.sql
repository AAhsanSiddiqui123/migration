-- Revert: schemas/dashboard_public/tables/tags/table from pg

BEGIN;
DROP TABLE "dashboard_public".tags;
COMMIT;  

