-- Revert: schemas/dashboard_public/tables/action_status_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_status_types FROM authenticated;
COMMIT;  

