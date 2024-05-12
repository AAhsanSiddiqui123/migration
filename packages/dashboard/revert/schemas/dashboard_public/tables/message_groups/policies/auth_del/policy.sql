-- Revert: schemas/dashboard_public/tables/message_groups/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".message_groups;
COMMIT;  

