-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/identifier/alterations/alt0000000424 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/identifier/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN identifier SET NOT NULL;
COMMIT;
