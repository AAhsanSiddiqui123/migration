-- Revert: schemas/dashboard_public/tables/addresses/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".addresses FROM authenticated;
COMMIT;  

