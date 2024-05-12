-- Revert: schemas/dashboard_public/tables/group_posts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

