-- Deploy: schemas/dashboard_public/tables/addresses/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".addresses TO authenticated;
COMMIT;
