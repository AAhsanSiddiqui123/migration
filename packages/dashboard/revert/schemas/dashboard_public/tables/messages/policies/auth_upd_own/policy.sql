-- Revert: schemas/dashboard_public/tables/messages/policies/auth_upd_own/policy from pg

BEGIN;
DROP POLICY auth_upd_own ON "dashboard_public".messages;
COMMIT;  

