-- Revert: schemas/dashboard_memberships_public/tables/group_members/columns/entity_id/alterations/alt0000000341 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

