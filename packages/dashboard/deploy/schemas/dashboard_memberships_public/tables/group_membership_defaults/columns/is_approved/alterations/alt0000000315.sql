-- Deploy: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/is_approved/alterations/alt0000000315 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_membership_defaults 
    ALTER COLUMN is_approved SET DEFAULT TRUE;
COMMIT;
