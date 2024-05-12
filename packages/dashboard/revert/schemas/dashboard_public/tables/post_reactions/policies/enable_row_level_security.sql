-- Revert: schemas/dashboard_public/tables/post_reactions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

