-- Deploy: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_impact_id_lang_code_key/alterations/alt0000001464 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_impact_id_lang_code_key/constraint

BEGIN;
COMMENT ON CONSTRAINT impact_language_variations_impact_id_lang_code_key ON "dashboard_public".impact_language_variations IS E'@omit';
COMMIT;
