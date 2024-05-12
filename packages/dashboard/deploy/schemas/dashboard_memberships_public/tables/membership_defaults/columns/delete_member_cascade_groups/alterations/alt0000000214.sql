-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000214 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/columns/delete_member_cascade_groups/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN delete_member_cascade_groups SET NOT NULL;
COMMIT;
