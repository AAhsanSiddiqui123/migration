-- Revert: schemas/dashboard_public/tables/related_actions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".related_actions FROM authenticated;
COMMIT;  

