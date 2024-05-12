-- Deploy: schemas/dashboard_public/tables/user_location_types/columns/ref/alterations/alt0000001562 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table
-- requires: schemas/dashboard_public/tables/user_location_types/columns/ref/column

BEGIN;
ALTER TABLE "dashboard_public".user_location_types ADD CONSTRAINT user_location_types_ref_chk CHECK (character_length(ref) <= 2048);
COMMIT;
