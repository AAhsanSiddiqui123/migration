-- Revert: schemas/dashboard_public/tables/object_attributes/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN description;
COMMIT;  

