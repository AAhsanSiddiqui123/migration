-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permissions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
