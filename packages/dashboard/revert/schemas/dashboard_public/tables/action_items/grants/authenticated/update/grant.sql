-- Revert: schemas/dashboard_public/tables/action_items/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_items FROM authenticated;
COMMIT;  

