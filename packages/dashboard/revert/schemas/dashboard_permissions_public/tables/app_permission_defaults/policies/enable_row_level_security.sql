-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permission_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

