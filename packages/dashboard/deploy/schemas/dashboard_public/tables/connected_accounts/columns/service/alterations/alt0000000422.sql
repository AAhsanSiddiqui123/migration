-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/service/alterations/alt0000000422 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/service/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN service SET NOT NULL;
COMMIT;
