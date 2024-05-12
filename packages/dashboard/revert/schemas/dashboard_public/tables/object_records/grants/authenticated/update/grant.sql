-- Revert: schemas/dashboard_public/tables/object_records/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".object_records FROM authenticated;
COMMIT;  

