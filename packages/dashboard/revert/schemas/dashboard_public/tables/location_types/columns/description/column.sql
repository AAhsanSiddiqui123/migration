-- Revert: schemas/dashboard_public/tables/location_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN description;
COMMIT;  

