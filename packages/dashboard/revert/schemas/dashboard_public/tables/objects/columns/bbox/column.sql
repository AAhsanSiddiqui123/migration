-- Revert: schemas/dashboard_public/tables/objects/columns/bbox/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN bbox;
COMMIT;  

