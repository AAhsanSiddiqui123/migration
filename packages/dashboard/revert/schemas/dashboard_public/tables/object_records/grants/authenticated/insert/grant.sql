-- Revert: schemas/dashboard_public/tables/object_records/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".object_records FROM authenticated;
COMMIT;  

