-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

