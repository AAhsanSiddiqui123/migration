-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

