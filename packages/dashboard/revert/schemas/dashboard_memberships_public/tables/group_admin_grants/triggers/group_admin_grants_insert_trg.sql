-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/triggers/group_admin_grants_insert_trg from pg

BEGIN;
DROP TRIGGER group_admin_grants_insert_trg ON "dashboard_memberships_public".group_admin_grants;
COMMIT;  

