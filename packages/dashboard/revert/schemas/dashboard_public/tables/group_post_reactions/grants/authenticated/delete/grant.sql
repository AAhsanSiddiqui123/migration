-- Revert: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_post_reactions FROM authenticated;
COMMIT;  

