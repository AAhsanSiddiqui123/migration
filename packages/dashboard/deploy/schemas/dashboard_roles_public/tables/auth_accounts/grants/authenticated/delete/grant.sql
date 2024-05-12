-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_roles_public".auth_accounts TO authenticated;
COMMIT;
