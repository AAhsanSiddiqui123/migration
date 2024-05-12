-- Revert: schemas/dashboard_public/tables/object_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_types;
COMMIT;  

