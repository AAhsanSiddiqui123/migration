-- Deploy: schemas/dashboard_public/tables/user_location_types/constraints/user_location_types_ref_key/alterations/alt0000001563 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/constraints/user_location_types_ref_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_location_types_ref_key ON "dashboard_public".user_location_types IS E'@omit';
COMMIT;
