-- Revert: schemas/dashboard_public/tables/posts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".posts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

