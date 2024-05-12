-- Deploy: schemas/dashboard_public/tables/track_actions/columns/track_id/alterations/alt0000000947 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN track_id SET NOT NULL;
COMMIT;
