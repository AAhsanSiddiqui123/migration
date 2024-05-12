-- Revert: schemas/dashboard_public/tables/post_reactions/table from pg

BEGIN;
DROP TABLE "dashboard_public".post_reactions;
COMMIT;  

