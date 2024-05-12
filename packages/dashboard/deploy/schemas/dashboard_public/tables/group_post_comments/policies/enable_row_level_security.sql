-- Deploy: schemas/dashboard_public/tables/group_post_comments/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments
    ENABLE ROW LEVEL SECURITY;
COMMIT;
