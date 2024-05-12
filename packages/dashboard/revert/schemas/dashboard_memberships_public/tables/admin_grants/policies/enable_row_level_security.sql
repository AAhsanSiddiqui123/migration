-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

