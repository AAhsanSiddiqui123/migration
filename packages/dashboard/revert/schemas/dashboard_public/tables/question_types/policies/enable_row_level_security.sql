-- Revert: schemas/dashboard_public/tables/question_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

