-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/is_verified/alterations/alt0000000429 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/is_verified/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN is_verified SET DEFAULT false;
COMMIT;
