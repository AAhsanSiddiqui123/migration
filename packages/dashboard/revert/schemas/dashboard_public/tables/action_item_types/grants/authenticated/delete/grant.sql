-- Revert: schemas/dashboard_public/tables/action_item_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_item_types FROM authenticated;
COMMIT;  

