-- Revert: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_post_reactions FROM authenticated;
COMMIT;  

