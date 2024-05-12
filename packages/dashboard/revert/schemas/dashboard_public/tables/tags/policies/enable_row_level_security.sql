-- Revert: schemas/dashboard_public/tables/tags/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".tags
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

