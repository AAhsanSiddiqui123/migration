-- Revert: schemas/dashboard_public/tables/object_types/columns/photo/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN photo;
COMMIT;  

