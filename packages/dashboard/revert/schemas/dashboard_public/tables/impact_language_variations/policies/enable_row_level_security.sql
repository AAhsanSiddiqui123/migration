-- Revert: schemas/dashboard_public/tables/impact_language_variations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

