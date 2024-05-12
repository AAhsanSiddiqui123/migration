-- Revert: schemas/dashboard_public/tables/related_actions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".related_actions FROM authenticated;
COMMIT;  

