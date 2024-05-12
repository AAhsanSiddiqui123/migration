-- Deploy: schemas/dashboard_public/tables/action_status_types/columns/status_for_verifier/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_status_types ADD COLUMN status_for_verifier boolean;
COMMIT;
