-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_active/alterations/alt0000000323 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN is_active DROP NOT NULL;


COMMIT;  

