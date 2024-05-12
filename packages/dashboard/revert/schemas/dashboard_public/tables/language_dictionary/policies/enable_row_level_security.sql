-- Revert: schemas/dashboard_public/tables/language_dictionary/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

