-- Deploy: schemas/dashboard_public/tables/track_groups/columns/group_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups ADD COLUMN group_id uuid;
COMMIT;
