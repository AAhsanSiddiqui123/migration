-- Revert: schemas/dashboard_public/tables/user_action_verifications/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( notes, verified, rejected ) ON TABLE "dashboard_public".user_action_verifications FROM authenticated;
COMMIT;  

