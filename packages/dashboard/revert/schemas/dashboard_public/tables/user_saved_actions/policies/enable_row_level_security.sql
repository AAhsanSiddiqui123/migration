-- Revert: schemas/dashboard_public/tables/user_saved_actions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

