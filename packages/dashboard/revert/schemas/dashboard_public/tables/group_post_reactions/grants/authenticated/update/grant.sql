-- Revert: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".group_post_reactions FROM authenticated;
COMMIT;  

