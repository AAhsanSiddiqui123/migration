-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/alterations/alt0000000546 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
