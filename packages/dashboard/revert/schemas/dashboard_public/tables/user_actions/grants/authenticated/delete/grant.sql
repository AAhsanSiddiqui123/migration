-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

