-- Revert: schemas/dashboard_public/tables/groups/columns/limited_to_location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN limited_to_location;
COMMIT;  

