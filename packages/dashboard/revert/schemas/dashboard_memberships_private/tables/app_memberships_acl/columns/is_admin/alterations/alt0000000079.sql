-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/columns/is_admin/alterations/alt0000000079 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".app_memberships_acl 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

