-- Deploy: schemas/dashboard_public/tables/global_languages/constraints/global_languages_lang_code_key/alterations/alt0000001286 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/constraints/global_languages_lang_code_key/constraint

BEGIN;
COMMENT ON CONSTRAINT global_languages_lang_code_key ON "dashboard_public".global_languages IS NULL;
COMMIT;
