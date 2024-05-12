-- Deploy: schemas/dashboard_memberships_public/tables/grants/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants
    ENABLE ROW LEVEL SECURITY;
COMMIT;
