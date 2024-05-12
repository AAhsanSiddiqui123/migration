-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/is_admin/alterations/alt0000000308 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".group_memberships_acl 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

