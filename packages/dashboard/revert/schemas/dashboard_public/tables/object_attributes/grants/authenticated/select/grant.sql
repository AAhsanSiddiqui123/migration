-- Revert: schemas/dashboard_public/tables/object_attributes/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_attributes FROM authenticated;
COMMIT;  

