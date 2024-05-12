-- Revert: schemas/dashboard_public/tables/tracks/columns/feed_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN feed_order;
COMMIT;  

