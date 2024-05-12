-- Deploy: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".organization_profiles TO authenticated;
COMMIT;
