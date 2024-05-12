-- Deploy: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/id/alterations/alt0000000303 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_membership_defaults 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
