-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/columns/grantor_id/alterations/alt0000000250 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  

