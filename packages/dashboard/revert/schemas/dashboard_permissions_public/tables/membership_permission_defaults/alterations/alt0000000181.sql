-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/alterations/alt0000000181 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permission_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

