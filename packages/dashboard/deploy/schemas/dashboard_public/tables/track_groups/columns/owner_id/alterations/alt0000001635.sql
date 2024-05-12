-- Deploy: schemas/dashboard_public/tables/track_groups/columns/owner_id/alterations/alt0000001635 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_public/tables/track_groups/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_groups 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
