-- Revert: schemas/dashboard_public/tables/user_pass_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_pass_actions FROM authenticated;
COMMIT;  

