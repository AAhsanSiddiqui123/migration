-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/owner_id/alterations/alt0000000420 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
