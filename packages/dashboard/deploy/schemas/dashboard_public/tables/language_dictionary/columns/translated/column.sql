-- Deploy: schemas/dashboard_public/tables/language_dictionary/columns/translated/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary ADD COLUMN translated text;
COMMIT;
