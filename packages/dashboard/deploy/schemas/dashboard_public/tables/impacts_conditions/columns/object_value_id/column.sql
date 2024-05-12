-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/object_value_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions ADD COLUMN object_value_id uuid;
COMMIT;
