-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/columns/entity_id/alterations/alt0000000257 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

