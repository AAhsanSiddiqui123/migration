-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/alterations/alt0000000038 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permissions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
