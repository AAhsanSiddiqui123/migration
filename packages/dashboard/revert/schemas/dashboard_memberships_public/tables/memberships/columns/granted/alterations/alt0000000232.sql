-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/granted/alterations/alt0000000232 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN granted DROP NOT NULL;


COMMIT;  

