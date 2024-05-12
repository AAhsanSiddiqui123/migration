-- Revert: schemas/dashboard_public/tables/users/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".users FROM authenticated;
COMMIT;  

