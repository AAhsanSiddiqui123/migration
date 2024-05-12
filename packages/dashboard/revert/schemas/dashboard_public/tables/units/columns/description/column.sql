-- Revert: schemas/dashboard_public/tables/units/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN description;
COMMIT;  

