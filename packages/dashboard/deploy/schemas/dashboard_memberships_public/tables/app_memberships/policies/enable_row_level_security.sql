-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships
    ENABLE ROW LEVEL SECURITY;
COMMIT;
