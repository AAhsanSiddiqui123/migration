-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/alterations/alt0000000302 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

