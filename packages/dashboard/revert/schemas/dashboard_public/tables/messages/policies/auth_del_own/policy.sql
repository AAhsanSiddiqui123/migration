-- Revert: schemas/dashboard_public/tables/messages/policies/auth_del_own/policy from pg

BEGIN;
DROP POLICY auth_del_own ON "dashboard_public".messages;
COMMIT;  

