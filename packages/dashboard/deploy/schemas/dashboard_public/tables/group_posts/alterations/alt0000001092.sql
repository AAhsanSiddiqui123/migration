-- Deploy: schemas/dashboard_public/tables/group_posts/alterations/alt0000001092 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
