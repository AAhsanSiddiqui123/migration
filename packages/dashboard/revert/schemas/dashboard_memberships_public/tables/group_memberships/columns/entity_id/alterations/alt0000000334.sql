-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/entity_id/alterations/alt0000000334 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

