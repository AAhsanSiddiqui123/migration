-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/alterations/alt0000000070 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships
    DISABLE ROW LEVEL SECURITY;
COMMIT;
