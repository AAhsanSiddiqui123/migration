-- Deploy: schemas/dashboard_public/tables/tags/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags ADD COLUMN name citext;
COMMIT;
