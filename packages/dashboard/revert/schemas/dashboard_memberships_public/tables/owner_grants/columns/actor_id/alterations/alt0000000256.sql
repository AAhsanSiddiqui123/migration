-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/columns/actor_id/alterations/alt0000000256 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

