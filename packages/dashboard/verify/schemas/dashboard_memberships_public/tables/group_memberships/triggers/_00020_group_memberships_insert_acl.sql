-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_00020_group_memberships_insert_acl on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._00020_group_memberships_insert_acl');
COMMIT;  

