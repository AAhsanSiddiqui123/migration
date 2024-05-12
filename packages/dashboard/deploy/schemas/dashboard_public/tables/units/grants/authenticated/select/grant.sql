-- Deploy: schemas/dashboard_public/tables/units/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".units TO authenticated;
COMMIT;
