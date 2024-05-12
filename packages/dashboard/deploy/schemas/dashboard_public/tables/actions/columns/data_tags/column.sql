-- Deploy: schemas/dashboard_public/tables/actions/columns/data_tags/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN data_tags citext[];
COMMIT;
