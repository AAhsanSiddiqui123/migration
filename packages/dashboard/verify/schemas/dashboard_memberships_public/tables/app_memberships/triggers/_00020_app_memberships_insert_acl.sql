-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/triggers/_00020_app_memberships_insert_acl on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._00020_app_memberships_insert_acl');
COMMIT;  

