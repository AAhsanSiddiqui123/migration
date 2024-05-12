-- Revert: schemas/dashboard_public/tables/user_viewed_actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_viewed_actions FROM authenticated;
COMMIT;  

