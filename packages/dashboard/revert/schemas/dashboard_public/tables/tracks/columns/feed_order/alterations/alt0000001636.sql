-- Revert: schemas/dashboard_public/tables/tracks/columns/feed_order/alterations/alt0000001636 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN feed_order DROP DEFAULT;

COMMIT;  

