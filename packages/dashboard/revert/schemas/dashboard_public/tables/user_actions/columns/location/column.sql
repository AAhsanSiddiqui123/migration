-- Revert: schemas/dashboard_public/tables/user_actions/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN location;
COMMIT;  

