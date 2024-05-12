-- Deploy: schemas/dashboard_public/tables/track_groups/indexes/track_groups_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_public/tables/track_groups/columns/owner_id/column

BEGIN;
CREATE INDEX track_groups_owner_id_idx ON "dashboard_public".track_groups (owner_id);
COMMIT;
