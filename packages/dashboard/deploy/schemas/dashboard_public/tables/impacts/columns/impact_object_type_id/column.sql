-- Deploy: schemas/dashboard_public/tables/impacts/columns/impact_object_type_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN impact_object_type_id uuid;
COMMIT;
