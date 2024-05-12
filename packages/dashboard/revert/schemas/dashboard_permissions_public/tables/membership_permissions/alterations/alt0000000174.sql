-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/alterations/alt0000000174 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

