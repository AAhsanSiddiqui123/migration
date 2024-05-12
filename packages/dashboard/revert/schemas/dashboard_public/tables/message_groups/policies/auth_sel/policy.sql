-- Revert: schemas/dashboard_public/tables/message_groups/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".message_groups;
COMMIT;  

