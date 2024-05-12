-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/id/alterations/alt0000000260 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

