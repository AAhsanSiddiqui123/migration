-- Deploy: schemas/dashboard_public/tables/global_languages/columns/lang_code/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages ADD COLUMN lang_code citext;
COMMIT;
