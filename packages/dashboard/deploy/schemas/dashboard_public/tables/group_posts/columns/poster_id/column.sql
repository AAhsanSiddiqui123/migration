-- Deploy: schemas/dashboard_public/tables/group_posts/columns/poster_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts ADD COLUMN poster_id uuid;
COMMIT;
