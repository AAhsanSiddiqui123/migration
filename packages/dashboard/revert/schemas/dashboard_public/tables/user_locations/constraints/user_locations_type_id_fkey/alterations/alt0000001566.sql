-- Revert: schemas/dashboard_public/tables/user_locations/constraints/user_locations_type_id_fkey/alterations/alt0000001566 from pg

BEGIN;
COMMENT ON CONSTRAINT user_locations_type_id_fkey ON "dashboard_public".user_locations IS NULL;
COMMIT;  

