-- Revert: schemas/dashboard_public/tables/user_action_items/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_action_items FROM authenticated;
COMMIT;  

