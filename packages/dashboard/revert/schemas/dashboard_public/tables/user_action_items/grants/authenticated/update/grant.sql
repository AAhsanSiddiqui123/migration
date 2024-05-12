-- Revert: schemas/dashboard_public/tables/user_action_items/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_action_items FROM authenticated;
COMMIT;  

