-- Deploy: schemas/dashboard_public/tables/impacts/columns/per_interval/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN per_interval interval;
COMMIT;
