-- Deploy: schemas/dashboard_public/tables/track_actions/columns/track_order/alterations/alt0000000939 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/columns/track_order/column

BEGIN;

ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN track_order SET DEFAULT 0;
COMMIT;
