-- Revert: schemas/dashboard_public/tables/related_actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".related_actions FROM authenticated;
COMMIT;  

