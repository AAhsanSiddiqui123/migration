-- Revert: schemas/dashboard_public/tables/object_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".object_types FROM authenticated;
COMMIT;  

