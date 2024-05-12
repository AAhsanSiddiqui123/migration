-- Verify: schemas/dashboard_public/tables/organization_profile_variations/indexes/organization_profile_variations_lang_code_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.organization_profile_variations', 'organization_profile_variations_lang_code_idx');
COMMIT;  

