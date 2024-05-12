-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/columns/id/alterations/alt0000000201 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
