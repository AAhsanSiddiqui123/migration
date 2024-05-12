-- Deploy: schemas/dashboard_public/tables/tracks/columns/feed_order/alterations/alt0000001636 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/feed_order/column

BEGIN;

ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN feed_order SET DEFAULT 0;
COMMIT;
