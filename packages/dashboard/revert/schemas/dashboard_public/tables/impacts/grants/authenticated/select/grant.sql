-- Revert: schemas/dashboard_public/tables/impacts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".impacts FROM authenticated;
COMMIT;  

