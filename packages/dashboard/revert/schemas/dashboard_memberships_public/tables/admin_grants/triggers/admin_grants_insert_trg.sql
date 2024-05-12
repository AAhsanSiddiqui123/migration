-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/triggers/admin_grants_insert_trg from pg

BEGIN;
DROP TRIGGER admin_grants_insert_trg ON "dashboard_memberships_public".admin_grants;
COMMIT;  

