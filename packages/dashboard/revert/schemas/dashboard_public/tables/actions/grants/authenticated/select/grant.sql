-- Revert: schemas/dashboard_public/tables/actions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".actions FROM authenticated;
COMMIT;  

