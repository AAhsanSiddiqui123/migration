-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".organization_profile_variations TO authenticated;
COMMIT;
