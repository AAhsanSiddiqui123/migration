-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/attr_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions ADD COLUMN attr_id uuid;
COMMIT;
