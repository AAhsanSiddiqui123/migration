-- Deploy: schemas/dashboard_public/tables/addresses/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".addresses TO authenticated;
COMMIT;
