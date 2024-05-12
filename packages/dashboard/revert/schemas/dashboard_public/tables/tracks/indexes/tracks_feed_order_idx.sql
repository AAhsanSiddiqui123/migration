-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_feed_order_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_feed_order_idx;
COMMIT;  

