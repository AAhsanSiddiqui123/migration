-- Revert: schemas/dashboard_public/tables/user_locations/constraints/user_locations_user_id_fkey/alterations/alt0000000634 from pg

BEGIN;
COMMENT ON CONSTRAINT user_locations_user_id_fkey ON "dashboard_public".user_locations IS NULL;
COMMIT;  

