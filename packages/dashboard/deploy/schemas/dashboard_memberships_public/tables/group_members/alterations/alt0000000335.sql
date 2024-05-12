-- Deploy: schemas/dashboard_memberships_public/tables/group_members/alterations/alt0000000335 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members
    DISABLE ROW LEVEL SECURITY;
COMMIT;
