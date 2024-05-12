-- Deploy: schemas/dashboard_public/tables/zip_codes/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".zip_codes TO authenticated;
COMMIT;
