-- Revert: schemas/dashboard_public/tables/units/table from pg

BEGIN;
DROP TABLE "dashboard_public".units;
COMMIT;  

