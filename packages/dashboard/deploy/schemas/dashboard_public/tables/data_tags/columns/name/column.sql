-- Deploy: schemas/dashboard_public/tables/data_tags/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;

ALTER TABLE "dashboard_public".data_tags ADD COLUMN name citext;
COMMIT;
