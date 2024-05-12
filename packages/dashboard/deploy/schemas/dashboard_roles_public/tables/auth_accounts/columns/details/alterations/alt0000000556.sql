-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/details/alterations/alt0000000556 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/columns/details/column

BEGIN;
COMMENT ON COLUMN "dashboard_roles_public".auth_accounts.details IS E'Additional profile details extracted from this login method';
COMMIT;
