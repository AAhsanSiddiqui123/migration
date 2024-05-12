-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/columns/owner_id/alterations/alt0000000383 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
