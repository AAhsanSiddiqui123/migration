-- Deploy: schemas/dashboard_public/tables/actions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".actions TO authenticated;
COMMIT;
