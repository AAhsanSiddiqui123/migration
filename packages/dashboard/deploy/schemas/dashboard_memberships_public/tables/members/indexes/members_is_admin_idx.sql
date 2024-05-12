-- Deploy: schemas/dashboard_memberships_public/tables/members/indexes/members_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table
-- requires: schemas/dashboard_memberships_public/tables/members/columns/is_admin/column

BEGIN;
CREATE INDEX members_is_admin_idx ON "dashboard_memberships_public".members (is_admin);
COMMIT;
