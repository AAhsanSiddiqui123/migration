-- Revert: schemas/dashboard_public/tables/objects/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN description;
COMMIT;  

