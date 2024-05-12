 
-- Deploy schemas/dashboard_public/tables/action_goals/fixtures/add_action_goals to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table
-- requires: schemas/dashboard_public/tables/goals/fixtures/add_goals
-- requires: schemas/dashboard_public/tables/actions/fixtures/add_actions_fixture
-- requires: schemas/faker/tables/dictionary/fixtures/add_sustainability_tags

BEGIN;

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Free Low Flow Faucets')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Free Low Flow Faucets')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Think Like a Watershed')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Think Like a Watershed')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('L.A.’s Free Tree Giveaway')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('L.A.’s Free Tree Giveaway')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('High-Efficiency Clothes Washers Rebates')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('High-Efficiency Clothes Washers Rebates')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Premium High-Efficiency Toilets Rebates')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Premium High-Efficiency Toilets Rebates')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Weather-Based Irrigation Controller Rebates')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Weather-Based Irrigation Controller Rebates')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Rain Barrels & Cisterns Rebates')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Rain Barrels & Cisterns Rebates')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Turf Replacement Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Turf Replacement Program')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('California Native Garden Landscape Training')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('California Native Garden Landscape Training')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Identifying and Removing Lawn Types')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Identifying and Removing Lawn Types')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Satellite Weather-Based Irrigation Control')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Satellite Weather-Based Irrigation Control')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit the Japanese Garden')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit the Japanese Garden')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Creating a ''Growing Home''')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Creating a ''Growing Home''')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Storm Season Emergency Alerts')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Storm Season Emergency Alerts')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Storm Emergency Survival Guide')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Storm Emergency Survival Guide')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('WaterTalks Survey ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('WaterTalks Survey ')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Land Use and Capturing Rainwater')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Land Use and Capturing Rainwater')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How Do We Plan for Water in California?')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How Do We Plan for Water in California?')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Where Does My Tap Water Come From?')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Where Does My Tap Water Come From?')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Water: Where Does It All Go?')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Water: Where Does It All Go?')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Host a Watertalks Meeting')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Host a Watertalks Meeting')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Your Community Water Story')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Your Community Water Story')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('L.A''s Ancient Solution to the Water Problem')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('L.A''s Ancient Solution to the Water Problem')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Tax Benefits of Permeable Paving')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Tax Benefits of Permeable Paving')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Hear the ''Know the Flow'' Song')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Hear the ''Know the Flow'' Song')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('City of LA''s Water Source')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('City of LA''s Water Source')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a video on LA''s water future')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a video on LA''s water future')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Connect with a ''Know the Flow'' Educator')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Connect with a ''Know the Flow'' Educator')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Test Your Water Knowledge')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Test Your Water Knowledge')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('What''s Your Water Footprint?')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('What''s Your Water Footprint?')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Faucet Aerators And Save!')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Faucet Aerators And Save!')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Low-Flow Showerheads And Save!')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Low-Flow Showerheads And Save!')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Earn Cash for Removing Grass')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Earn Cash for Removing Grass')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Thermostatic Shower Valve and Save!')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Thermostatic Shower Valve and Save!')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Weather-based Irrigation Controllers (WBICs)')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install Weather-based Irrigation Controllers (WBICs)')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Rotating Sprinkler Nozzle')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Rotating Sprinkler Nozzle')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a High Efficiency Clothes Washer')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a High Efficiency Clothes Washer')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Rain Capture System')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Rain Capture System')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Soil Moisture Sensor')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Soil Moisture Sensor')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for the Turf Replacement Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for the Turf Replacement Program')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Kelp''s Impact')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Kelp''s Impact')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('DIY Rain Garden ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('DIY Rain Garden ')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Involved with Our Water LA')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Involved with Our Water LA')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Harvesting Rainwater in LA')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Harvesting Rainwater in LA')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Fixing the Problem of Drought in Cities')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Fixing the Problem of Drought in Cities')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on India''s Water Revolution')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on India''s Water Revolution')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Great Comeback of the Public Drinking Water Fountain')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Great Comeback of the Public Drinking Water Fountain')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Groundwater Treatment in Your Area')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Groundwater Treatment in Your Area')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Ocean Friendly Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Ocean Friendly Gardens')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Involved with FOLAR')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Involved with FOLAR')), '668328e3-0746-59df-88ab-4a7e62eaa0f2');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Climate Victory Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Climate Victory Gardens')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Free Composting Workshop')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Free Composting Workshop')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Bird Walk at Kenneth Hahn ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Bird Walk at Kenneth Hahn ')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Compost Your Food Scraps')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Compost Your Food Scraps')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Your Quick Compost Guide')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Your Quick Compost Guide')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Free Permaculture Course')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Free Permaculture Course')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Become a Nature Tour Volunteer')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Become a Nature Tour Volunteer')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Become a Habitat Restoration Volunteer')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Become a Habitat Restoration Volunteer')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Barn Owl Nesting Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Barn Owl Nesting Program')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Barn Owl Nesting Box')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Barn Owl Nesting Box')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With KYCC''s Environmental Team')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With KYCC''s Environmental Team')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Map the Urban Harvest')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Map the Urban Harvest')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How To Stop Wasting Food')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How To Stop Wasting Food')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Kiss The Ground (Film)')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Kiss The Ground (Film)')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('"The Gangsta Gardener" TED Talk')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('"The Gangsta Gardener" TED Talk')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Download and Try: iNaturalist')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Download and Try: iNaturalist')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit Ocean View Farms')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit Ocean View Farms')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Gabe Brown: Regeneration of Our Land')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Gabe Brown: Regeneration of Our Land')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How ATL Is Turning Ex-Cons Into Urban Farmers')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How ATL Is Turning Ex-Cons Into Urban Farmers')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Local Food Economies (Will Save Our Land)')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Local Food Economies (Will Save Our Land)')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('NASA''s List Of The Best Air-Filtering Houseplants')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('NASA''s List Of The Best Air-Filtering Houseplants')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About Soil Restoration')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About Soil Restoration')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Community Healing Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Community Healing Gardens')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer at Community Healing Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer at Community Healing Gardens')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Adopt With Community Healing Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Adopt With Community Healing Gardens')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Give to Community Healing Gardens')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Give to Community Healing Gardens')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Community Gardening And Health')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Community Gardening And Health')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Plastic-Hungry Fungus Rebuilds a Community')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Plastic-Hungry Fungus Rebuilds a Community')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join a Compost Co-Op')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join a Compost Co-Op')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join a Community Compost Hub')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join a Community Compost Hub')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Donate to Create Healthy Soil')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Donate to Create Healthy Soil')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Composting for Small Spaces')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Composting for Small Spaces')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Food Waste Pickup Service')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Food Waste Pickup Service')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Adopt a Beach')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Adopt a Beach')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With Emerald Necklace')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With Emerald Necklace')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Advanced Garden Design Workshop')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Advanced Garden Design Workshop')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Story of AMIGOS DE LOS RIOS')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Story of AMIGOS DE LOS RIOS')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Weeds of the Garden')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Weeds of the Garden')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Healing the Environment With TreePeople')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Healing the Environment With TreePeople')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Addressing Environmental Equity With TreePeople')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Addressing Environmental Equity With TreePeople')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Enroll in a Disaster Preparedness Course')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Enroll in a Disaster Preparedness Course')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn Plants That Attract Pollinators')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn Plants That Attract Pollinators')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Connect Your Local School District With Eat Real')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Connect Your Local School District With Eat Real')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Gardening for Pest Control')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Gardening for Pest Control')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Soil Carbon and Colored Cotton')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Soil Carbon and Colored Cotton')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Pledge to Reduce Your Meat Consumption')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Pledge to Reduce Your Meat Consumption')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Sign Up for Imperfect Produce')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Sign Up for Imperfect Produce')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Free Sustainable Gardening Class')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Free Sustainable Gardening Class')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About the Power of Pea Protein')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About the Power of Pea Protein')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Understanding Food and Climate Change')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Understanding Food and Climate Change')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn to Make Your Own Compost')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn to Make Your Own Compost')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Search for Sustainable Seafood Options')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Search for Sustainable Seafood Options')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Regenerative Agriculture')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Regenerative Agriculture')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Schedule a Garden Consultation')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Schedule a Garden Consultation')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About Food Deserts')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About Food Deserts')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Foraging Class ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take a Foraging Class ')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on Foraging')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on Foraging')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How Plants Can Boost Children''s Immunity ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How Plants Can Boost Children''s Immunity ')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Use the Soil Centric Action Planner')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Use the Soil Centric Action Planner')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Free Tree for Your Local School')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Free Tree for Your Local School')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Free Mulch for Your Garden')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Free Mulch for Your Garden')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With City Plants ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer With City Plants ')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply to Join the Young Adult Corps')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply to Join the Young Adult Corps')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Add a Climate-Appropriate Plant to Your Garden')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Add a Climate-Appropriate Plant to Your Garden')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Perform an At-Home Soil Percolation Test')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Perform an At-Home Soil Percolation Test')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read about the Seed Saving Descendants')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read about the Seed Saving Descendants')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Pesticide-Free Pest Control')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Pesticide-Free Pest Control')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How to Get Communities to Compost')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How to Get Communities to Compost')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Livestock Farming for Carbon Sequestration')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Livestock Farming for Carbon Sequestration')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer with LA Compost')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer with LA Compost')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a Virtual Event with Heal the Bay')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a Virtual Event with Heal the Bay')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply to Donate Fruit from Your Fruit Tree')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply to Donate Fruit from Your Fruit Tree')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Donate Produce from Your Garden')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Donate Produce from Your Garden')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Pacoima Beautiful''s Work')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Pacoima Beautiful''s Work')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a CLAW Event')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a CLAW Event')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer with LA-Más')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Volunteer with LA-Más')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Tree Care Tips & Techniques')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Tree Care Tips & Techniques')), 'df875ca1-04ba-52b4-93ef-92a8c318cc9c');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Tree Planted in Your Yard for Free')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Tree Planted in Your Yard for Free')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Switch to Renewable Energy')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Switch to Renewable Energy')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join the E-Bike Revolution')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Join the E-Bike Revolution')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Redesign Cities To Keep Us Cool')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Redesign Cities To Keep Us Cool')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Using Trees To Reduce Heat Islands')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Using Trees To Reduce Heat Islands')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('10 Lo-Tech Ways To Cool Your Home ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('10 Lo-Tech Ways To Cool Your Home ')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Lighting Choices To Save You Money')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Lighting Choices To Save You Money')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Trees Are Key To Fighting Urban Heat')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Trees Are Key To Fighting Urban Heat')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Tree Planted in Your Neighborhood')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Tree Planted in Your Neighborhood')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('A Beginner''s Guide To Biking in La')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('A Beginner''s Guide To Biking in La')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Free Biking Classes')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Free Biking Classes')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biking in LA')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biking in LA')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('OhmConnect Energy Savings')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('OhmConnect Energy Savings')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on OhmConnect')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watch a Video on OhmConnect')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Retrofit Incentives for California Homes')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Retrofit Incentives for California Homes')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Mission to Cool LA')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('The Mission to Cool LA')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('LA Tree Splendor (Pinterest Board)')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('LA Tree Splendor (Pinterest Board)')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Celebrating Our Urban Foresters')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Celebrating Our Urban Foresters')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Heather Morris: My TreePeople Experience')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Heather Morris: My TreePeople Experience')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Cooling U.S. Cities With Urban Planning')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Cooling U.S. Cities With Urban Planning')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('See Pictures of LA River Before It Was Paved')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('See Pictures of LA River Before It Was Paved')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Smart Thermostat To Save!')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Smart Thermostat To Save!')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Rebate for Duct Sealing and Testing')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get a Rebate for Duct Sealing and Testing')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Smart Thermostat and Save!')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Smart Thermostat and Save!')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For a Home Energy Improvement Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For a Home Energy Improvement Program')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Heat Pump Water Heater')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Install a Heat Pump Water Heater')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for the Electrify Santa Monica Rebate Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for the Electrify Santa Monica Rebate Program')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Windows and Window Film')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Windows and Window Film')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for Funding for Solar on Multifamily Affordable Housing ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for Funding for Solar on Multifamily Affordable Housing ')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for an Electric Vehicle Rebate')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for an Electric Vehicle Rebate')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('DIY: An Energy Efficiency Project')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('DIY: An Energy Efficiency Project')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Insulation')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Insulation')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Appliances')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Appliances')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Lighting')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Lighting')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Water Heaters')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Financing Energy Efficient Water Heaters')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Funding For Electric Vehicle Charging Station Fees')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Get Funding For Electric Vehicle Charging Station Fees')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For A Used Electric Vehicle Rebate')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For A Used Electric Vehicle Rebate')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For The Self-Generation Incentive Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply For The Self-Generation Incentive Program')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About California Solar Initiative')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About California Solar Initiative')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Return or Purchase from Eileen Fisher Renew')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Return or Purchase from Eileen Fisher Renew')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('10 Ways to Reduce Your Food Waste Footprint')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('10 Ways to Reduce Your Food Waste Footprint')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('How to Lighten the Washday Load on the Environment')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('How to Lighten the Washday Load on the Environment')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take Action with Stand.earth')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take Action with Stand.earth')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn the Basics of Ethical Consumption')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn the Basics of Ethical Consumption')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('What is a Circular Economy?')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('What is a Circular Economy?')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Try Thinx Period Panties Risk-Free')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Try Thinx Period Panties Risk-Free')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About a Sustainable Products')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About a Sustainable Products')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biden''s Climate Ambitions')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biden''s Climate Ambitions')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Register for a Free Think Resilience Course')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Register for a Free Think Resilience Course')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Download the Transition Streets Handbook')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Download the Transition Streets Handbook')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Look, Smell, Taste, Don''t Waste')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Look, Smell, Taste, Don''t Waste')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check out a Black-Owned Vegan Restaurant')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check out a Black-Owned Vegan Restaurant')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a Stanford Energy Seminar')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Attend a Stanford Energy Seminar')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Calculate Your Carbon Footprint')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Calculate Your Carbon Footprint')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Best Thrift Spots in LA')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Best Thrift Spots in LA')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Carbon Tax vs. Cap and Trade')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Carbon Tax vs. Cap and Trade')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for Climate Change Bootcamp')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Apply for Climate Change Bootcamp')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn the Basics of Sea Level Rise')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn the Basics of Sea Level Rise')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Collaborating on Resilient Infrastructure')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Collaborating on Resilient Infrastructure')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Pope Francis is Advising Investors to Think Sustainably')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Pope Francis is Advising Investors to Think Sustainably')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Reducing Your Food Related Emissions')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Reducing Your Food Related Emissions')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check Out ''Waste Not''')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check Out ''Waste Not''')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Resilient Trees for Climate Adaptation')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Resilient Trees for Climate Adaptation')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Sign Up for the TreePeople Newsletter')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Sign Up for the TreePeople Newsletter')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About the Emerald Necklace Vision Plan')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About the Emerald Necklace Vision Plan')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About the Benefits of Urban Greening')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read About the Benefits of Urban Greening')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit the L.A. City History Trail')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Visit the L.A. City History Trail')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Register for Homecycle ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Register for Homecycle ')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Urban Cooling in Canoga Park')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About Urban Cooling in Canoga Park')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('List of Easy Alternative Proteins')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('List of Easy Alternative Proteins')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about the Green New Deal ')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about the Green New Deal ')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biden''s Climate Plan for Agriculture')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Biden''s Climate Plan for Agriculture')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Benefits of Plants in Prisons')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Benefits of Plants in Prisons')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Reusable Products')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn about Reusable Products')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read about Youth Climate Activism')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Read about Youth Climate Activism')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check Out Terracycle''s Free Recycling Programs')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Check Out Terracycle''s Free Recycling Programs')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About the Zero Waste Box Program')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Learn About the Zero Waste Box Program')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take Action with Climate Resolve')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Take Action with Climate Resolve')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Planting in the Right Place')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Planting in the Right Place')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Planting your Tree')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Planting your Tree')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watering your Tree')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Watering your Tree')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

INSERT INTO dashboard_public.action_goals ( action_id, owner_id, goal_id ) VALUES ((SELECT id FROM dashboard_public.actions WHERE slug = inflection.slugify('Mulching your Trees')), (SELECT owner_id FROM dashboard_public.actions WHERE slug = inflection.slugify('Mulching your Trees')), 'c64fce9c-63af-5d8b-a4d5-cde77161a6e8');

COMMIT;
