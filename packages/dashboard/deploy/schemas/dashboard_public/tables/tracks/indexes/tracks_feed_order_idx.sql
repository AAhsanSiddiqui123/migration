-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_feed_order_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/feed_order/column

BEGIN;
CREATE INDEX tracks_feed_order_idx ON "dashboard_public".tracks (feed_order);
COMMIT;
