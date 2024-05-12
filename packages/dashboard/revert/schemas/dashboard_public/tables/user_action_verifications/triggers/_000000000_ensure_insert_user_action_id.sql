-- Revert: schemas/dashboard_public/tables/user_action_verifications/triggers/_000000000_ensure_insert_user_action_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_user_action_id ON "dashboard_public".user_action_verifications;
COMMIT;  

