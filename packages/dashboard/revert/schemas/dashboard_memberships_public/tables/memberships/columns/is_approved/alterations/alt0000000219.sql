-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/is_approved/alterations/alt0000000219 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

