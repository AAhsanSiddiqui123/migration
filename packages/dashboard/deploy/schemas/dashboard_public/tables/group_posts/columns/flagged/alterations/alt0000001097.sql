-- Deploy: schemas/dashboard_public/tables/group_posts/columns/flagged/alterations/alt0000001097 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/flagged/column

BEGIN;

ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN flagged SET DEFAULT false;
COMMIT;
