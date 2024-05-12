-- Revert: schemas/dashboard_public/tables/user_locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_locations;
COMMIT;  

