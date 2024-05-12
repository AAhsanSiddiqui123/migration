-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/columns/id/alterations/alt0000000382 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/columns/id/column

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
