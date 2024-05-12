-- Deploy: schemas/dashboard_public/tables/notifications/columns/entity_type/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications ADD COLUMN entity_type text;
COMMIT;
