-- Deploy: schemas/dashboard_public/tables/group_posts/columns/tagged_user_ids/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts ADD COLUMN tagged_user_ids uuid[];
COMMIT;
