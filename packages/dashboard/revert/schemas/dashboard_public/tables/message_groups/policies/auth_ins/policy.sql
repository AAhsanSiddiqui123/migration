-- Revert: schemas/dashboard_public/tables/message_groups/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".message_groups;
COMMIT;  

