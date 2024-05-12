-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/triggers/group_member_permissions_insert_trg from pg

BEGIN;
DROP TRIGGER group_member_permissions_insert_trg ON "dashboard_permissions_public".group_member_permissions;
COMMIT;  

