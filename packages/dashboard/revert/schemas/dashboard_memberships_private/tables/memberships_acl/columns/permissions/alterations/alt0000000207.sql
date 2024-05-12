-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/columns/permissions/alterations/alt0000000207 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".memberships_acl 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

