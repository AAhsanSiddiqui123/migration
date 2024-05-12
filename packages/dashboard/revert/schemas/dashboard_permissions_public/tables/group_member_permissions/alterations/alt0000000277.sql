-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/alterations/alt0000000277 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permissions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

