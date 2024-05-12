-- Revert: schemas/dashboard_public/tables/group_post_reactions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

