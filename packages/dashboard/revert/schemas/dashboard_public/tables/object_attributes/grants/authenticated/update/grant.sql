-- Revert: schemas/dashboard_public/tables/object_attributes/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".object_attributes FROM authenticated;
COMMIT;  

