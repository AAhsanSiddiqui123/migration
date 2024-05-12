-- Revert: schemas/dashboard_public/tables/user_location_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types DROP COLUMN name;
COMMIT;  

