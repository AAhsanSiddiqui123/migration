-- Revert: schemas/dashboard_public/tables/action_items/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_items FROM authenticated;
COMMIT;  

