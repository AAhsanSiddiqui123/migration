-- Revert: schemas/dashboard_public/tables/action_item_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_item_types FROM authenticated;
COMMIT;  

