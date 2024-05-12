-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_language_variations ADD COLUMN name citext;
COMMIT;
