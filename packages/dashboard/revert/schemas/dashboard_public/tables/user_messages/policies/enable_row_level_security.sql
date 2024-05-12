-- Revert: schemas/dashboard_public/tables/user_messages/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

