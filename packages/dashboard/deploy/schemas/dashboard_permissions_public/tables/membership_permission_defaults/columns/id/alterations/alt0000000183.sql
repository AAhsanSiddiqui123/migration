-- Deploy: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/id/alterations/alt0000000183 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permission_defaults 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
