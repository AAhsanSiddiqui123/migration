-- Deploy: schemas/dashboard_public/tables/actions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".actions TO authenticated;
COMMIT;
