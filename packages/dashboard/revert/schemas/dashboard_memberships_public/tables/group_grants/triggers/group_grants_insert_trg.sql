-- Revert: schemas/dashboard_memberships_public/tables/group_grants/triggers/group_grants_insert_trg from pg

BEGIN;
DROP TRIGGER group_grants_insert_trg ON "dashboard_memberships_public".group_grants;
COMMIT;  

