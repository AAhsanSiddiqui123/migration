-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

