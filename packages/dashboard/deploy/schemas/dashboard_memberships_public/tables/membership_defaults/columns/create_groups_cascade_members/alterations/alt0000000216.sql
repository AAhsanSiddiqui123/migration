-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/alterations/alt0000000216 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN create_groups_cascade_members SET NOT NULL;
COMMIT;
