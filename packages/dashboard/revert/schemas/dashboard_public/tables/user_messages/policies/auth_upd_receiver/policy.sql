-- Revert: schemas/dashboard_public/tables/user_messages/policies/auth_upd_receiver/policy from pg

BEGIN;
DROP POLICY auth_upd_receiver ON "dashboard_public".user_messages;
COMMIT;  

