-- Revert: schemas/dashboard_public/tables/user_locations/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN coords;
COMMIT;  

