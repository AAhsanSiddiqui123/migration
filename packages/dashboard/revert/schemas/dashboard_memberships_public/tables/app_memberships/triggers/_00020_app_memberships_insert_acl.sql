-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/triggers/_00020_app_memberships_insert_acl from pg

BEGIN;
DROP TRIGGER _00020_app_memberships_insert_acl ON "dashboard_memberships_public".app_memberships;
COMMIT;  

