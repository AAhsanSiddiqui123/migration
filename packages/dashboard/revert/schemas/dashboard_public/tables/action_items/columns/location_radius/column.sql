-- Revert: schemas/dashboard_public/tables/action_items/columns/location_radius/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN location_radius;
COMMIT;  

