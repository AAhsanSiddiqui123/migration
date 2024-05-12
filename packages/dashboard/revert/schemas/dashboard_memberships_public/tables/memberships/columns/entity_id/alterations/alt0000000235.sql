-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/entity_id/alterations/alt0000000235 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

