-- Revert: schemas/dashboard_public/tables/user_action_verifications/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_action_verifications FROM authenticated;
COMMIT;  

