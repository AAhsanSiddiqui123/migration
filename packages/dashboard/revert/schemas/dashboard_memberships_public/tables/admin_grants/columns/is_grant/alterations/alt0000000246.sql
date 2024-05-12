-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/columns/is_grant/alterations/alt0000000246 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants 
    ALTER COLUMN is_grant DROP NOT NULL;


COMMIT;  

