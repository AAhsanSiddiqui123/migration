-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/columns/is_owner/alterations/alt0000000203 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".memberships_acl 
    ALTER COLUMN is_owner DROP NOT NULL;


COMMIT;  

