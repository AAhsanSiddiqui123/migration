-- Revert: schemas/dashboard_public/tables/data_tags/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

