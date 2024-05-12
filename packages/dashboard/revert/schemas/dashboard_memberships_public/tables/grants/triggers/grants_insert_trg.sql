-- Revert: schemas/dashboard_memberships_public/tables/grants/triggers/grants_insert_trg from pg

BEGIN;
DROP TRIGGER grants_insert_trg ON "dashboard_memberships_public".grants;
COMMIT;  

