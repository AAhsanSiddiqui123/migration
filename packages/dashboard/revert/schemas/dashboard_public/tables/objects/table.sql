-- Revert: schemas/dashboard_public/tables/objects/table from pg

BEGIN;
DROP TABLE "dashboard_public".objects;
COMMIT;  

