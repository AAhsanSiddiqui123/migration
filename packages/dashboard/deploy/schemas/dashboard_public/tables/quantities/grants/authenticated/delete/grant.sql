-- Deploy: schemas/dashboard_public/tables/quantities/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".quantities TO authenticated;
COMMIT;
