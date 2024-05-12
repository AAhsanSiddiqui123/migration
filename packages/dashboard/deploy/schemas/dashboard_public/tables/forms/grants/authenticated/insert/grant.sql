-- Deploy: schemas/dashboard_public/tables/forms/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".forms TO authenticated;
COMMIT;
