-- Revert: schemas/dashboard_public/tables/objects/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN id;
COMMIT;  

