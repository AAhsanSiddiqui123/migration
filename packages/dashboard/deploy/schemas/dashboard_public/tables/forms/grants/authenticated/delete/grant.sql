-- Deploy: schemas/dashboard_public/tables/forms/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".forms TO authenticated;
COMMIT;
