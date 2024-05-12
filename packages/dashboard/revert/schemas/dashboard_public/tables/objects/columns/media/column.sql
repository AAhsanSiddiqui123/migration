-- Revert: schemas/dashboard_public/tables/objects/columns/media/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN media;
COMMIT;  

