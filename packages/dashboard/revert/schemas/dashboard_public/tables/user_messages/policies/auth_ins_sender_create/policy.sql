-- Revert: schemas/dashboard_public/tables/user_messages/policies/auth_ins_sender_create/policy from pg

BEGIN;
DROP POLICY auth_ins_sender_create ON "dashboard_public".user_messages;
COMMIT;  

