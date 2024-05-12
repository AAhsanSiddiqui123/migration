-- Deploy: schemas/dashboard_public/tables/track_actions/columns/owner_id/alterations/alt0000000949 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
