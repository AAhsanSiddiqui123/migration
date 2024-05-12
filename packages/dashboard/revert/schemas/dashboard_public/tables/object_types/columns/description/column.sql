-- Revert: schemas/dashboard_public/tables/object_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN description;
COMMIT;  

