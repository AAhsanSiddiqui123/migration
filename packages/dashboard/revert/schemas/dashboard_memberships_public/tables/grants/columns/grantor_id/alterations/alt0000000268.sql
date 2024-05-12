-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/grantor_id/alterations/alt0000000268 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  

