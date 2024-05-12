-- Revert: schemas/dashboard_public/tables/message_groups/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".message_groups;
COMMIT;  

