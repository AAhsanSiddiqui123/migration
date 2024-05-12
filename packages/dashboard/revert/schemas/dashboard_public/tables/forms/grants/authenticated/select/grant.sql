-- Revert: schemas/dashboard_public/tables/forms/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".forms FROM authenticated;
COMMIT;  

