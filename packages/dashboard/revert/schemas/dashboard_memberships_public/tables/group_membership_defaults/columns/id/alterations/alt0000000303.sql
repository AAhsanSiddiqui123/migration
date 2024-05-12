-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/id/alterations/alt0000000303 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

