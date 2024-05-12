-- Deploy: schemas/dashboard_public/tables/post_comments/alterations/alt0000001079 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".post_comments
    DISABLE ROW LEVEL SECURITY;
COMMIT;
