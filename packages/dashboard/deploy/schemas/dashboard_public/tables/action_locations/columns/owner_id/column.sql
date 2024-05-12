-- Deploy: schemas/dashboard_public/tables/action_locations/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_locations ADD COLUMN owner_id uuid;
COMMIT;
