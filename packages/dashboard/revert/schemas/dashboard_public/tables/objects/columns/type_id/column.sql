-- Revert: schemas/dashboard_public/tables/objects/columns/type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN type_id;
COMMIT;  

