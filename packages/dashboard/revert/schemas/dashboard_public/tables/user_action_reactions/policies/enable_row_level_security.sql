-- Revert: schemas/dashboard_public/tables/user_action_reactions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

