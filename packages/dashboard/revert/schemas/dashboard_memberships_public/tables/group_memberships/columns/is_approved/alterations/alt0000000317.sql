-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_approved/alterations/alt0000000317 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN is_approved DROP NOT NULL;


COMMIT;  

