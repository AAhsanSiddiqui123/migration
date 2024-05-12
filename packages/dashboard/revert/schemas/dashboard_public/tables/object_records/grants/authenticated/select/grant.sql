-- Revert: schemas/dashboard_public/tables/object_records/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_records FROM authenticated;
COMMIT;  

