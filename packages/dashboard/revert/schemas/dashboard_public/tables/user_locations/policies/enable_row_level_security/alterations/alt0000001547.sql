-- Revert: schemas/dashboard_public/tables/user_locations/policies/enable_row_level_security/alterations/alt0000001547 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

