-- Revert: schemas/dashboard_public/tables/object_type_attributes/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_type_attributes FROM authenticated;
COMMIT;  

