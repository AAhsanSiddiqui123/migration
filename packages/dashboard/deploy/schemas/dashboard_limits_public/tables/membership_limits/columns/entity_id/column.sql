-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limits ADD COLUMN entity_id uuid;
COMMIT;
