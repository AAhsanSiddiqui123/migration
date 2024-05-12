-- Revert: schemas/dashboard_public/tables/user_saved_actions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_saved_actions FROM authenticated;
COMMIT;  

