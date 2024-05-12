-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/permissions/alterations/alt0000000230 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

