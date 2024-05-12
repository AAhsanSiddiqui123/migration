-- Deploy: schemas/dashboard_public/tables/posts/columns/flagged/alterations/alt0000001065 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/posts/columns/flagged/column

BEGIN;

ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN flagged SET DEFAULT false;
COMMIT;
