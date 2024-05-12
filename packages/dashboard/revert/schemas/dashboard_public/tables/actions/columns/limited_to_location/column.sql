-- Revert: schemas/dashboard_public/tables/actions/columns/limited_to_location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN limited_to_location;
COMMIT;  

