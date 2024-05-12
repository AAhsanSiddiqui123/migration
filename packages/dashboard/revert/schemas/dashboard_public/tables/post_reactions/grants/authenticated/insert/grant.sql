-- Revert: schemas/dashboard_public/tables/post_reactions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".post_reactions FROM authenticated;
COMMIT;  

