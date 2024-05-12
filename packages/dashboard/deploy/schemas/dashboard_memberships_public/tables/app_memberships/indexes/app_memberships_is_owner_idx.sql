-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/indexes/app_memberships_is_owner_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_owner/column

BEGIN;
CREATE INDEX app_memberships_is_owner_idx ON "dashboard_memberships_public".app_memberships (is_owner);
COMMIT;
