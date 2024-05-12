-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/alterations/alt0000000284 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permission_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

