-- Revert: schemas/dashboard_limits_public/tables/membership_limits/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

