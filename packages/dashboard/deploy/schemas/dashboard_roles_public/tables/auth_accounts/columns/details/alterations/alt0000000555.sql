-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/details/alterations/alt0000000555 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/columns/details/column

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN details SET NOT NULL;
COMMIT;
