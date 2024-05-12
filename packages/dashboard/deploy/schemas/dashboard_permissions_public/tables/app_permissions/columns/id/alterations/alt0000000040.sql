-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/columns/id/alterations/alt0000000040 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permissions 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
