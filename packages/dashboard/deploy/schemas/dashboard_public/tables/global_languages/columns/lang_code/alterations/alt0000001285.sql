-- Deploy: schemas/dashboard_public/tables/global_languages/columns/lang_code/alterations/alt0000001285 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table
-- requires: schemas/dashboard_public/tables/global_languages/columns/lang_code/column

BEGIN;
ALTER TABLE "dashboard_public".global_languages ADD CONSTRAINT global_languages_lang_code_chk CHECK (character_length(lang_code) <= 10);
COMMIT;
