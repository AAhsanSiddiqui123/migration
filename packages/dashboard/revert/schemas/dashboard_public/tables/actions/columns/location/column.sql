-- Revert: schemas/dashboard_public/tables/actions/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN location;
COMMIT;  

