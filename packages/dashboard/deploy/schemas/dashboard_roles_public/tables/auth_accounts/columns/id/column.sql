-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts ADD COLUMN id uuid;
COMMIT;
