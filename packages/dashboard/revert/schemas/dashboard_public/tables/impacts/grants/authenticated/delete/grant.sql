-- Revert: schemas/dashboard_public/tables/impacts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".impacts FROM authenticated;
COMMIT;  

