-- Deploy: schemas/dashboard_memberships_private/tables/memberships_acl/columns/permissions/alterations/alt0000000207 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/table
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/permissions/column

BEGIN;

ALTER TABLE "dashboard_memberships_private".memberships_acl 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
