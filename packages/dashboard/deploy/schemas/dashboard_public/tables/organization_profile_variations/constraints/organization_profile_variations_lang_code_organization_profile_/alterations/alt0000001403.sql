-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_lang_code_organization_profile_/alterations/alt0000001403 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_lang_code_organization_profile_/constraint

BEGIN;
COMMENT ON CONSTRAINT organization_profile_variations_lang_code_organization_profile_ ON "dashboard_public".organization_profile_variations IS NULL;
COMMIT;
