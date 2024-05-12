-- Deploy: schemas/dashboard_public/tables/group_posts/columns/group_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts ADD COLUMN group_id uuid;
COMMIT;
