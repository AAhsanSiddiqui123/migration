-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/lang_code/alterations/alt0000001396 from pg

BEGIN;
ALTER TABLE "dashboard_public".organization_profile_variations DROP CONSTRAINT organization_profile_variations_lang_code_chk;
COMMIT;  

