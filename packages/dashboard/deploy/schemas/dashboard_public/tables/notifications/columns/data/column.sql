-- Deploy: schemas/dashboard_public/tables/notifications/columns/data/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications ADD COLUMN data jsonb;
COMMIT;
