-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_types
    ENABLE ROW LEVEL SECURITY;
COMMIT;
