-- Revert: schemas/dashboard_public/tables/organization_profile_variations/triggers/update_slg_lang_code from pg

BEGIN;
DROP TRIGGER update_slg_lang_code ON "dashboard_public".organization_profile_variations;
COMMIT;  

