-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/columns/name/alterations/alt0000000384 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/columns/name/column

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
