-- Deploy: schemas/dashboard_public/tables/object_types/columns/quantity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;

ALTER TABLE "dashboard_public".object_types ADD COLUMN quantity_id uuid;
COMMIT;
