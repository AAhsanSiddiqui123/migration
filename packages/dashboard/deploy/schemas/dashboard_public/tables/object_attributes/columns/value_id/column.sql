-- Deploy: schemas/dashboard_public/tables/object_attributes/columns/value_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_attributes ADD COLUMN value_id uuid;
COMMIT;
