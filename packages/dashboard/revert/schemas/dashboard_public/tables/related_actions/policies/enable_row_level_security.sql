-- Revert: schemas/dashboard_public/tables/related_actions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

