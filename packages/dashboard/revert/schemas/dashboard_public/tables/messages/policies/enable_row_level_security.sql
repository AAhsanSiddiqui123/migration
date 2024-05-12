-- Revert: schemas/dashboard_public/tables/messages/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".messages
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

