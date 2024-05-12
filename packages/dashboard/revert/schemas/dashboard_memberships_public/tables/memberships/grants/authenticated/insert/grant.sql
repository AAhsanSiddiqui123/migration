-- Revert: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( actor_id, entity_id ) ON TABLE "dashboard_memberships_public".memberships FROM authenticated;
COMMIT;  

