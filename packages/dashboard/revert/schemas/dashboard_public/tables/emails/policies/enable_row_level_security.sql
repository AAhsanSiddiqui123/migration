-- Revert: schemas/dashboard_public/tables/emails/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".emails
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

