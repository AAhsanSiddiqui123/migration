-- Revert: schemas/dashboard_public/tables/objects/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".objects
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

