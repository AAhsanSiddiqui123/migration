-- Deploy: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_is_owner_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/is_owner/column

BEGIN;
CREATE INDEX memberships_is_owner_idx ON "dashboard_memberships_public".memberships (is_owner);
COMMIT;
