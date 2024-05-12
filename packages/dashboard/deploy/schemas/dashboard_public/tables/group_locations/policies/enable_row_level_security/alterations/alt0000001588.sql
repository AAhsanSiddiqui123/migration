-- Deploy: schemas/dashboard_public/tables/group_locations/policies/enable_row_level_security/alterations/alt0000001588 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations
    ENABLE ROW LEVEL SECURITY;
COMMIT;
