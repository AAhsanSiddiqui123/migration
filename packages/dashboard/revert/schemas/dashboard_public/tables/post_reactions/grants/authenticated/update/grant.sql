-- Revert: schemas/dashboard_public/tables/post_reactions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".post_reactions FROM authenticated;
COMMIT;  

