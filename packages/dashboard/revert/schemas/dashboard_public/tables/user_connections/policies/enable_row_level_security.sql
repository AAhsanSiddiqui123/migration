-- Revert: schemas/dashboard_public/tables/user_connections/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

