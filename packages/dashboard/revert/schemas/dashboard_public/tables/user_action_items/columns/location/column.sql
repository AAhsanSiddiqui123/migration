-- Revert: schemas/dashboard_public/tables/user_action_items/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN location;
COMMIT;  

