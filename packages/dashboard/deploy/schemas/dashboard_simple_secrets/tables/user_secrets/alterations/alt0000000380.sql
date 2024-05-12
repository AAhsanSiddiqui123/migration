-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/alterations/alt0000000380 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets
    DISABLE ROW LEVEL SECURITY;
COMMIT;
