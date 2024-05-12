-- Deploy: schemas/dashboard_public/tables/notifications/columns/should_push/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications ADD COLUMN should_push boolean;
COMMIT;
