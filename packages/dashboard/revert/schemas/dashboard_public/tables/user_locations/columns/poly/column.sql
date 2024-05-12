-- Revert: schemas/dashboard_public/tables/user_locations/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN poly;
COMMIT;  

