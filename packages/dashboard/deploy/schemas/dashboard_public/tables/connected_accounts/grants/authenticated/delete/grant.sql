-- Deploy: schemas/dashboard_public/tables/connected_accounts/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".connected_accounts TO authenticated;
COMMIT;
