-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/triggers/owner_grants_insert_trg from pg

BEGIN;
DROP TRIGGER owner_grants_insert_trg ON "dashboard_memberships_public".owner_grants;
COMMIT;  

