-- Deploy: schemas/dashboard_public/tables/track_groups/columns/track_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups ADD COLUMN track_id uuid;
COMMIT;
