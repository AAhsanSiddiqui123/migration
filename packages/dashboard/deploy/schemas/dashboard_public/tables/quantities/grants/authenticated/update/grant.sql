-- Deploy: schemas/dashboard_public/tables/quantities/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".quantities TO authenticated;
COMMIT;
