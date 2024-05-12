-- Revert: schemas/dashboard_public/tables/object_attributes/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".object_attributes FROM authenticated;
COMMIT;  

