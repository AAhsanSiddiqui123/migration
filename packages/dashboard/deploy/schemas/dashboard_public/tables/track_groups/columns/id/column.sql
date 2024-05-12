-- Deploy: schemas/dashboard_public/tables/track_groups/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups ADD COLUMN id uuid;
COMMIT;
