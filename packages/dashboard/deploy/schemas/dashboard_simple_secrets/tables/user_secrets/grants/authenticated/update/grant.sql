-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_simple_secrets".user_secrets TO authenticated;
COMMIT;
