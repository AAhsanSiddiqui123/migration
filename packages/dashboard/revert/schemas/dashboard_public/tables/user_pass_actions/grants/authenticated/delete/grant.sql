-- Revert: schemas/dashboard_public/tables/user_pass_actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_pass_actions FROM authenticated;
COMMIT;  

