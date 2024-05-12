-- Deploy: schemas/dashboard_public/tables/global_languages/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".global_languages TO authenticated;
COMMIT;
