-- Revert: schemas/dashboard_public/tables/user_pass_actions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

