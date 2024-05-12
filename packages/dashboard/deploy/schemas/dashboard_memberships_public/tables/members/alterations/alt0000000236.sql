-- Deploy: schemas/dashboard_memberships_public/tables/members/alterations/alt0000000236 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members
    DISABLE ROW LEVEL SECURITY;
COMMIT;
