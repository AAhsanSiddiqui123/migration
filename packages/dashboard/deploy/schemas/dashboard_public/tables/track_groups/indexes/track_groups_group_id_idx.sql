-- Deploy: schemas/dashboard_public/tables/track_groups/indexes/track_groups_group_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_public/tables/track_groups/columns/group_id/column

BEGIN;
CREATE INDEX track_groups_group_id_idx ON "dashboard_public".track_groups (group_id);
COMMIT;
