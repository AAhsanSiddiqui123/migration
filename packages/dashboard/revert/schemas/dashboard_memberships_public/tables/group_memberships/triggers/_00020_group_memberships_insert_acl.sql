-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_00020_group_memberships_insert_acl from pg

BEGIN;
DROP TRIGGER _00020_group_memberships_insert_acl ON "dashboard_memberships_public".group_memberships;
COMMIT;  

