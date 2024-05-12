-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/columns/lang_code/alterations/alt0000001396 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_public/tables/organization_profile_variations/columns/lang_code/column

BEGIN;
ALTER TABLE "dashboard_public".organization_profile_variations ADD CONSTRAINT organization_profile_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);
COMMIT;
