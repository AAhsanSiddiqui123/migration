-- Revert: schemas/dashboard_public/tables/user_pass_actions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_pass_actions FROM authenticated;
COMMIT;  

