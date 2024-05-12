-- Revert: schemas/dashboard_public/tables/user_location_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types DROP COLUMN description;
COMMIT;  

