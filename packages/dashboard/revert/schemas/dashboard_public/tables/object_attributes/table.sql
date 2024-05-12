-- Revert: schemas/dashboard_public/tables/object_attributes/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_attributes;
COMMIT;  

