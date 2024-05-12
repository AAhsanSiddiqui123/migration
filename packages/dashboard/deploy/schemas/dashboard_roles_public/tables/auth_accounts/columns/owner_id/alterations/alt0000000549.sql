-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/columns/owner_id/alterations/alt0000000549 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
