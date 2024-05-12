-- Revert: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".group_post_reactions FROM authenticated;
COMMIT;  

