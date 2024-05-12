-- Revert: schemas/dashboard_public/tables/objects/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN is_private;
COMMIT;  

