-- Revert: schemas/dashboard_public/tables/user_locations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN name;
COMMIT;  

