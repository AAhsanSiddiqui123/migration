-- Revert: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_impact_id_lang_code_key/alterations/alt0000001464 from pg

BEGIN;
COMMENT ON CONSTRAINT impact_language_variations_impact_id_lang_code_key ON "dashboard_public".impact_language_variations IS NULL;
COMMIT;  

