-- Deploy: schemas/dashboard_public/tables/tracks/columns/data_tags/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE "dashboard_public".tracks ADD COLUMN data_tags citext[];
COMMIT;
