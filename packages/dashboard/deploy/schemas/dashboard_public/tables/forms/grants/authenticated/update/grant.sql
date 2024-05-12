-- Deploy: schemas/dashboard_public/tables/forms/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".forms TO authenticated;
COMMIT;
