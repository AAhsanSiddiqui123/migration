-- Deploy: schemas/dashboard_public/tables/global_languages/grants/anonymous/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".global_languages TO anonymous;
COMMIT;
