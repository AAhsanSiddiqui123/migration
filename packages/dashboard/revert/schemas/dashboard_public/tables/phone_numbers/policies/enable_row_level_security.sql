-- Revert: schemas/dashboard_public/tables/phone_numbers/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

