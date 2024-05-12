-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( actor_id, entity_id ) ON TABLE "dashboard_memberships_public".group_memberships FROM authenticated;
COMMIT;  

