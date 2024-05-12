-- Revert: schemas/dashboard_public/tables/tags/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".tags FROM authenticated;
COMMIT;  

