-- Deploy: schemas/dashboard_public/tables/addresses/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".addresses TO authenticated;
COMMIT;
