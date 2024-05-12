-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000075 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
