-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/identifier/alterations/alt0000000553 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/columns/identifier/column

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN identifier SET NOT NULL;
COMMIT;
