-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permission_defaults DROP COLUMN entity_id;
COMMIT;  

