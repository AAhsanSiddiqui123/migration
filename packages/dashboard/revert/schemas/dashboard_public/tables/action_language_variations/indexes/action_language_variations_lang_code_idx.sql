-- Revert: schemas/dashboard_public/tables/action_language_variations/indexes/action_language_variations_lang_code_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_language_variations_lang_code_idx;
COMMIT;  

