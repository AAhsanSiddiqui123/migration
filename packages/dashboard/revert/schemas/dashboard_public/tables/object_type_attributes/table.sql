-- Revert: schemas/dashboard_public/tables/object_type_attributes/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_type_attributes;
COMMIT;  

