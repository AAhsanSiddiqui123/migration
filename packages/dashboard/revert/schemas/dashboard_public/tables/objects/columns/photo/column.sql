-- Revert: schemas/dashboard_public/tables/objects/columns/photo/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN photo;
COMMIT;  

