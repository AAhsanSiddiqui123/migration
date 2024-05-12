-- Deploy: schemas/dashboard_public/tables/posts/columns/tagged_user_ids/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts ADD COLUMN tagged_user_ids uuid[];
COMMIT;
