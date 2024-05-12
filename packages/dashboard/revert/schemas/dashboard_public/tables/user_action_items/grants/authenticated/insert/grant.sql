-- Revert: schemas/dashboard_public/tables/user_action_items/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_action_items FROM authenticated;
COMMIT;  

