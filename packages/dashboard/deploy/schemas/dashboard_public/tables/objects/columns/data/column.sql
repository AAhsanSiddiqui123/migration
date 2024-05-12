-- Deploy: schemas/dashboard_public/tables/objects/columns/data/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;

ALTER TABLE "dashboard_public".objects ADD COLUMN data jsonb;
COMMIT;
