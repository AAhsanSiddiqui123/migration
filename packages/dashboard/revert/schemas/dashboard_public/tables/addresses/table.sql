-- Revert: schemas/dashboard_public/tables/addresses/table from pg

BEGIN;
DROP TABLE "dashboard_public".addresses;
COMMIT;  

