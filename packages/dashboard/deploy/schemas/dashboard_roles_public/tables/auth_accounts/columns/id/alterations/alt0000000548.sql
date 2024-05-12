-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/id/alterations/alt0000000548 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
