-- Revert: schemas/dashboard_public/tables/post_reactions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".post_reactions FROM authenticated;
COMMIT;  

