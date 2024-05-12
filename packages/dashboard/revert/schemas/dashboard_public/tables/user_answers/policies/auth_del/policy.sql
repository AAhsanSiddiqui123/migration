-- Revert: schemas/dashboard_public/tables/user_answers/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".user_answers;
COMMIT;  

