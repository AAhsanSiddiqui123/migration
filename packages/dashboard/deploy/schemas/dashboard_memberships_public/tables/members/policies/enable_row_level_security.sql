-- Deploy: schemas/dashboard_memberships_public/tables/members/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members
    ENABLE ROW LEVEL SECURITY;
COMMIT;
