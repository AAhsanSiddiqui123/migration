-- Deploy: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".organization_profiles TO authenticated;
COMMIT;
