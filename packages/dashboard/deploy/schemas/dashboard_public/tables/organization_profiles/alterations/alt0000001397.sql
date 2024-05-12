-- Deploy: schemas/dashboard_public/tables/organization_profiles/alterations/alt0000001397 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;
COMMENT ON TABLE "dashboard_public".organization_profiles IS E'@i18n organization_profile_variations';
COMMIT;
