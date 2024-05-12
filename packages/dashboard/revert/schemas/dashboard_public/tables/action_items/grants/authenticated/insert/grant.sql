-- Revert: schemas/dashboard_public/tables/action_items/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_items FROM authenticated;
COMMIT;  

