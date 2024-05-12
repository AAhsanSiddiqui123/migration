-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts
    ENABLE ROW LEVEL SECURITY;
COMMIT;
