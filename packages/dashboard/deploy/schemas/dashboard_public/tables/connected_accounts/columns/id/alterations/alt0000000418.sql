-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/id/alterations/alt0000000418 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
