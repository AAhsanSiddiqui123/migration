-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/_00020_memberships_update_acl from pg

BEGIN;
DROP TRIGGER _00020_memberships_update_acl ON "dashboard_memberships_public".memberships;
COMMIT;  

