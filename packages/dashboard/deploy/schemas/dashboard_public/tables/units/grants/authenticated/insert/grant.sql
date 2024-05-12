-- Deploy: schemas/dashboard_public/tables/units/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".units TO authenticated;
COMMIT;
