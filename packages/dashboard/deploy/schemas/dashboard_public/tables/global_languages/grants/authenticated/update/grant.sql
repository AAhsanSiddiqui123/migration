-- Deploy: schemas/dashboard_public/tables/global_languages/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".global_languages TO authenticated;
COMMIT;
