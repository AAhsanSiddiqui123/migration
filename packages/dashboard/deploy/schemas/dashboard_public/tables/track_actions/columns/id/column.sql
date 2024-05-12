-- Deploy: schemas/dashboard_public/tables/track_actions/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE "dashboard_public".track_actions ADD COLUMN id uuid;
COMMIT;
