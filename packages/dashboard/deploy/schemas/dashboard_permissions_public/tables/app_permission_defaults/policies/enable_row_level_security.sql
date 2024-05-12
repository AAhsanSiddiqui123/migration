-- Deploy: schemas/dashboard_permissions_public/tables/app_permission_defaults/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permission_defaults/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permission_defaults
    ENABLE ROW LEVEL SECURITY;
COMMIT;
