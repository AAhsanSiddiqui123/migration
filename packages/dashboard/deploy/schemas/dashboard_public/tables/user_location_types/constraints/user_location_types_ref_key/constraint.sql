-- Deploy: schemas/dashboard_public/tables/user_location_types/constraints/user_location_types_ref_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table

BEGIN;

ALTER TABLE "dashboard_public".user_location_types
    ADD CONSTRAINT user_location_types_ref_key UNIQUE (ref);
COMMIT;
