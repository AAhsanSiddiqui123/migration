-- Deploy: schemas/dashboard_public/tables/object_types/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;

ALTER TABLE "dashboard_public".object_types ADD COLUMN name citext;
COMMIT;
