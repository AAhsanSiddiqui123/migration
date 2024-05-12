-- Deploy: schemas/dashboard_public/tables/post_comments/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".post_comments ADD COLUMN id uuid;
COMMIT;
