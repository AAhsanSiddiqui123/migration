-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/alterations/alt0000000305 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".group_memberships_acl
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

