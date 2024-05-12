-- Revert: schemas/dashboard_public/tables/object_types/columns/icon/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN icon;
COMMIT;  

