-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000214 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN delete_member_cascade_groups DROP NOT NULL;


COMMIT;  

