-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

