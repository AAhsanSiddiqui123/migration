-- Deploy: schemas/dashboard_public/tables/user_locations/policies/enable_row_level_security/alterations/alt0000001547 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations
    ENABLE ROW LEVEL SECURITY;
COMMIT;
