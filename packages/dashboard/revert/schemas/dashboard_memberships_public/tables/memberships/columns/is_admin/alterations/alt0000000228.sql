-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/is_admin/alterations/alt0000000228 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

