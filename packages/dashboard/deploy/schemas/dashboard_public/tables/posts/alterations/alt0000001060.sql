-- Deploy: schemas/dashboard_public/tables/posts/alterations/alt0000001060 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
