-- Deploy: schemas/dashboard_public/tables/object_type_attributes/columns/object_type_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes ADD COLUMN object_type_id uuid;
COMMIT;
