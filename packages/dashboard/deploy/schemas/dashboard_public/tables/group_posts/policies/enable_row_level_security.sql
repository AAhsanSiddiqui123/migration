-- Deploy: schemas/dashboard_public/tables/group_posts/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts
    ENABLE ROW LEVEL SECURITY;
COMMIT;
