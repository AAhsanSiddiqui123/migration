-- Deploy: schemas/dashboard_public/tables/posts/columns/poster_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts ADD COLUMN poster_id uuid;
COMMIT;
