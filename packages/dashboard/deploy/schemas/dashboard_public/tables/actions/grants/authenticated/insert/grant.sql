-- Deploy: schemas/dashboard_public/tables/actions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".actions TO authenticated;
COMMIT;
