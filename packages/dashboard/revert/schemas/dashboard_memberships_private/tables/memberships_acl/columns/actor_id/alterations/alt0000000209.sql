-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/columns/actor_id/alterations/alt0000000209 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".memberships_acl 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

