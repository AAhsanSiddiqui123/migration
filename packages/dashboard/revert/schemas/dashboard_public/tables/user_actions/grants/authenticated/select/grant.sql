-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

