-- Revert: schemas/dashboard_public/tables/user_location_types/constraints/user_location_types_ref_key/alterations/alt0000001563 from pg

BEGIN;
COMMENT ON CONSTRAINT user_location_types_ref_key ON "dashboard_public".user_location_types IS NULL;
COMMIT;  

