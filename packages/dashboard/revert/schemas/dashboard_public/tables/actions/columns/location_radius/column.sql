-- Revert: schemas/dashboard_public/tables/actions/columns/location_radius/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN location_radius;
COMMIT;  

