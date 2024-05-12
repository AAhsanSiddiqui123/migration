-- Deploy: schemas/dashboard_public/tables/object_records/columns/unit_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;

ALTER TABLE "dashboard_public".object_records ADD COLUMN unit_id uuid;
COMMIT;
