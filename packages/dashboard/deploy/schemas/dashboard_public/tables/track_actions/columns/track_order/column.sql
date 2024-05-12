-- Deploy: schemas/dashboard_public/tables/track_actions/columns/track_order/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE "dashboard_public".track_actions ADD COLUMN track_order int;
COMMIT;
