-- Deploy: schemas/dashboard_public/tables/posts/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts ADD COLUMN id uuid;
COMMIT;
