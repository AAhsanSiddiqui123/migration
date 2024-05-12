-- Deploy: schemas/dashboard_public/tables/object_type_value_language_variations/columns/text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_language_variations ADD COLUMN text text;
COMMIT;
