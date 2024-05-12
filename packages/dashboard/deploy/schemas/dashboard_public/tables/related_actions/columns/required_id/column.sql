-- Deploy: schemas/dashboard_public/tables/related_actions/columns/required_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;

ALTER TABLE "dashboard_public".related_actions ADD COLUMN required_id uuid;
COMMIT;
