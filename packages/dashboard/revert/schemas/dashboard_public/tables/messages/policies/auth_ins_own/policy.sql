-- Revert: schemas/dashboard_public/tables/messages/policies/auth_ins_own/policy from pg

BEGIN;
DROP POLICY auth_ins_own ON "dashboard_public".messages;
COMMIT;  

