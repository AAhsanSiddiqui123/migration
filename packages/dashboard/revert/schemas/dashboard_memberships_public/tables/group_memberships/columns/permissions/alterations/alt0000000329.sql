-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/permissions/alterations/alt0000000329 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

