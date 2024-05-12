-- Deploy: schemas/dashboard_public/tables/posts/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts
    ENABLE ROW LEVEL SECURITY;
COMMIT;
