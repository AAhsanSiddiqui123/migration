-- Revert: schemas/dashboard_public/tables/post_comments/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

