-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permissions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

