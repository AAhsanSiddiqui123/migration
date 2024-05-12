-- Revert: schemas/dashboard_memberships_public/tables/group_members/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_members
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

