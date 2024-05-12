-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/columns/object_type_value_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks ADD COLUMN object_type_value_id uuid;
COMMIT;
