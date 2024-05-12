-- Deploy: schemas/dashboard_public/tables/global_languages/constraints/global_languages_lang_code_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages
    ADD CONSTRAINT global_languages_lang_code_key UNIQUE (lang_code);
COMMIT;
