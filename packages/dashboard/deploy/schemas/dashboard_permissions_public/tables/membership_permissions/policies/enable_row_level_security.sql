-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permissions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
