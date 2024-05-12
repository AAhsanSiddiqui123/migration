-- Deploy: schemas/dashboard_memberships_public/tables/grants/alterations/alt0000000259 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants
    DISABLE ROW LEVEL SECURITY;
COMMIT;
