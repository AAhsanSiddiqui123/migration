-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_feed_order_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_feed_order_idx');
COMMIT;  

