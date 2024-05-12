-- Deploy: schemas/dashboard_public/tables/tags/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".tags TO authenticated;
COMMIT;
