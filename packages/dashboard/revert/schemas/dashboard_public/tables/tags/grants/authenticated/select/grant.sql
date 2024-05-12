-- Revert: schemas/dashboard_public/tables/tags/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".tags FROM authenticated;
COMMIT;  

