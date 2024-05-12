-- Revert: schemas/dashboard_public/tables/global_languages/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

