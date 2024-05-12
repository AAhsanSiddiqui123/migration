-- Deploy: schemas/dashboard_public/tables/goals/columns/search/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;

ALTER TABLE "dashboard_public".goals ADD COLUMN search tsvector;
COMMIT;
