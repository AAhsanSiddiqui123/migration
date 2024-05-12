-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/alterations/alt0000000251 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".owner_grants
    DISABLE ROW LEVEL SECURITY;
COMMIT;
