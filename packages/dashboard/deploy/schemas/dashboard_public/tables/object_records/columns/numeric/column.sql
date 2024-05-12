-- Deploy: schemas/dashboard_public/tables/object_records/columns/numeric/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;

ALTER TABLE "dashboard_public".object_records ADD COLUMN "numeric" numeric;
COMMIT;
