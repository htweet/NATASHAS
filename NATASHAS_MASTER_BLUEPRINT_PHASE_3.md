# NATASHAS — NAIJA TABLE SHAKERS
## Master Product & Technical Blueprint
### Phase 3 — Blueprint / Build Specification

**Tagline:** Power belongs to whoever can keep it.

**Parent ecosystem:** GameForge
**Product type:** Persistent multiplayer political-life simulation, social strategy game, narrative sandbox, economic simulation and live-service browser game
**Primary delivery:** Web + mobile-first PWA
**Primary audience:** Nigerian/African players first, global audience second
**Document purpose:** Single implementation-oriented source for product, UX, game design, AI, architecture, engineering, security, live operations and commercialization.

---

# 0. BLUEPRINT GOVERNANCE

This document consolidates the complete NATASHAS concept from the initial business opportunity analysis through the Phase 2 Game Constitution and converts it into an implementation blueprint.

It is intentionally written so that a product team, UX team, game designers, backend engineers, frontend engineers, AI engineers, DevOps, security engineers, QA, data analysts, content designers and an AI development system such as Claude can work from the same specification.

The constitutional rule is simple:

> Later technical decisions may change implementation details, but must not silently contradict the product rules, UX principles, safety boundaries, economic integrity or simulation philosophy defined here.

Implementation versions of libraries, frameworks, browser APIs, payment providers and cloud services must be re-verified at development time because the software ecosystem changes.

---

# 1. EXECUTIVE PRODUCT DEFINITION

NATASHAS is a living fictional Nigerian republic in which players can build influence, participate in politics, create businesses, form organisations, contest elections, govern states, rise to national office, influence media, build relationships, survive scandals, respond to emergencies, compete in tournaments and leave a permanent historical legacy.

It is not merely a politics game.

It is an interconnected simulation where:

**Player behavior changes the world.**

**The world changes player opportunities.**

**AI creates narratives from actual world conditions.**

**Social activity exposes events to other players.**

**Economic and political systems influence one another.**

**History persists.**

The intended emotional experience is:

- "Something is always happening."
- "My decisions matter."
- "I know what changed."
- "I can act immediately."
- "Anything can happen, but it still makes sense."
- "This feels Nigerian."
- "This world remembers me."

---

# 2. THE PRODUCT NORTH STAR

## 2.1 Central formula

`PLAYER + WORLD + POLITICS + ECONOMY + SOCIAL + AI + EVENTS + MEMORY + CONSEQUENCES + COMPETITION = NATASHAS`

## 2.2 Central gameplay loop

`POWER -> CHOICE -> CONSEQUENCE -> REACTION -> OPPORTUNITY -> CHOICE`

## 2.3 Core product promise

NATASHAS must be:

- deep without being confusing
- strategic without being inaccessible
- social without being chaotic
- politically dramatic without becoming a real-world political tool
- monetized without becoming pay-to-win
- persistent without punishing casual/offline players unfairly
- AI-powered without allowing AI to cheat the simulation
- Nigerian without becoming culturally shallow or stereotyped

---

# 3. PRODUCT OBJECTIVES

1. Create a browser game that is compelling enough to revisit throughout the day.
2. Create a persistent social ecosystem where events can become conversations.
3. Make political power a multi-dimensional strategic system rather than a single points race.
4. Build a scalable simulation engine capable of emergent stories.
5. Make every important feature immediately discoverable through context.
6. Create a strong GameForge flagship title and proof point.
7. Build infrastructure that can support future GameForge games and services.
8. Establish an extensible marketplace/asset pipeline.
9. Provide safe, moderated fictional political drama.
10. Support sustainable monetization without selling electoral victory.

---

# 4. PRODUCT BOUNDARIES

## 4.1 In scope

- fictional political simulation
- 36 Nigerian states + Federal Capital Territory representation
- geopolitical zones
- local government / ward abstraction
- player life simulation
- political roles
- business systems
- political parties and factions
- elections
- governance
- economics
- social network
- media
- AI narrative systems
- counterfactual simulation
- leaderboards
- tournaments
- persistent world
- seasons and legacy
- international affairs
- emergency systems
- communication
- ads and sponsorships
- GameForge marketplace integration
- admin/Game Master console
- anti-cheat and observability

## 4.2 Deliberately not a real-world political service

NATASHAS does not provide:

- real-world political campaign management
- real-world voter targeting tools
- real-world protest planning
- real-world security evasion instructions
- real-world criminal instruction
- factual allegations about identifiable people presented as game facts

---

# 5. TARGET PLAYERS

## 5.1 Casual player

Needs:

- obvious next action
- short sessions
- social activity
- events
- simple progression
- lightweight AI assistance

## 5.2 Core strategy player

Needs:

- political analytics
- economic controls
- relationship graphs
- detailed dashboards
- factions
- event chains
- deeper AI

## 5.3 Political role-player

Needs:

- speeches
- identity
- relationships
- narrative consequences
- office progression
- history
- social reputation

## 5.4 Competitive player

Needs:

- leaderboards
- fair competition
- tournaments
- anti-cheat
- ranking history
- seasonal progression

## 5.5 Social player

Needs:

- social feed
- chat
- groups
- parties
- messaging
- shareable moments

---

# 6. WORLD MODEL

## 6.1 World hierarchy

`FEDERATION -> ZONE -> STATE -> LGA -> WARD/COMMUNITY -> ACTOR`

The simulation data model should include all 36 states and the FCT from the beginning even if some player-facing gameplay systems are activated in phases.

## 6.2 State object

Each state should expose:

- identifier
- name
- zone
- population model
- economic index
- infrastructure index
- education index
- healthcare index
- security index
- public sentiment
- unrest
- party distribution
- faction distribution
- governor
- legislative composition
- treasury
- business activity
- grassroots strength
- media intensity
- current events
- historical events

## 6.3 Time

The world requires a server-controlled clock.

Time should influence:

- events
- travel
- campaigns
- deadlines
- energy
- economy
- NPC activity
- news cycles
- tournament windows
- player notifications

A speed multiplier may exist for selected simulation layers, but persistent competitive systems must use a consistent authoritative clock.

## 6.4 World persistence

The world is event-driven and stateful.

Every important state change should be reconstructable from an event stream or durable audit data.

---

# 7. PLAYER ARCHITECTURE

## 7.1 Player master profile

Core properties:

- player_id
- display_name
- avatar
- age bracket / fictional character age model as appropriate
- role
- party affiliation
- faction affiliation
- home state
- current location
- public reputation
- health
- wealth
- living standard
- energy
- education
- influence
- network
- loyalty
- stress
- security
- political capital
- media capital
- grassroots capital
- institutional capital
- intelligence capital
- legacy score
- fair-play score
- season score

## 7.2 Player-state separation

Keep separate records for:

**identity**

**current state**

**inventory/assets**

**relationships**

**political positions**

**financial accounts**

**history**

**permissions**

**achievements**

**moderation status**

This avoids one giant player row and supports modular systems.

---

# 8. LIFE SIMULATION

Health, wealth and living standard are gameplay variables, not cosmetic meters.

Example profile:

- Health: 74/100
- Wealth: ₦G 2.8M virtual value
- Living standard: 61/100
- Energy: 83/100
- Reputation: 72/100
- Influence: 48/100
- Education: 66/100
- Network: 71/100
- Loyalty: 59/100
- Stress: 43/100
- Security: 37/100

## 8.1 System interactions

Campaign travel can lower energy.

Long activity periods can increase stress.

Poor living conditions can reduce recovery.

Healthcare spending can improve recovery.

Business success can increase living standard.

Major scandals can affect stress and reputation.

Political pressure can increase exhaustion.

## 8.2 Eligibility use

Certain events/roles may check combinations of:

- influence
- health
- wealth/resources
- reputation
- education
- political support
- energy
- stress
- network

Eligibility must not become a permanent paywall or socioeconomic dead end.

---

# 9. CAREER AND ROLE PROGRESSION

Base pathway:

`Citizen -> Community Influence -> Political Supporter -> Party Member -> Party Operative -> Ward Leadership -> Local Influence -> State Influence -> State Office -> Governor Candidate -> Governor -> Regional Influence -> National Influence -> Presidential Aspirant -> Primary -> Presidential Candidate -> Election -> President`

Alternative tracks:

- journalist
- media owner
- business magnate
- strategist
- lobbyist
- activist
- political financier
- security/intelligence role
- organiser
- kingmaker

The progression graph must permit lateral movement rather than forcing a single class tree.

---

# 10. POLITICAL CAPITAL MODEL

Represent power using multiple capital types.

## Financial

Money available to act.

## Political

Ability to get political actors aligned.

## Social

Relationships and trust.

## Institutional

Access to decision-making structures.

## Media

Ability to reach and influence audiences.

## Grassroots

Community-level organisational strength.

## Intelligence

Useful and trusted information.

## Reputation

Credibility and public confidence.

### Core rule

These values are related but not interchangeable.

A wealthy player may have poor trust.

A famous player may have little institutional access.

A kingmaker may have little personal wealth.

A governor may have office but weak grassroots support.

---

# 11. POLITICAL PARTIES AND FACTIONS

Parties must be first-class persistent entities.

Party fields:

- identity
- governance philosophy
- membership
- treasury
- national strength
- state strength
- media reach
- candidate pool
- leadership
- internal factions
- approval
- historical record

Factions can have:

- leader
- ideology
- members
- resources
- support
- relationships
- faction goals
- grievances
- risk

Faction relationships can be tracked independently from party membership.

---

# 12. RELATIONSHIP GRAPH

Relationships should be represented as a dynamic graph.

Each edge may include:

- trust
- loyalty
- influence
- reciprocity
- fear/risk abstraction where appropriate
- history count
- cooperation count
- betrayal count
- financial exposure
- political dependency
- current sentiment

Relationship states:

- ally
- close ally
- neutral
- contact
- rival
- adversary
- enemy
- faction-dependent

## Relationship heatmap

Players should get a visual summary:

**Who matters?**

- strongest allies
- emerging allies
- dangerous rivals
- trusted contacts
- high-risk relationships
- inactive connections

---

# 13. INFORMATION SYSTEM

Information is a strategic resource.

Every significant information object should have:

- source
- timestamp
- confidence
- provenance
- visibility scope
- verification status
- associated entities
- historical references

Classification:

- public
- private
- confidential
- faction-only
- leaked
- rumour
- unverified
- verified
- player-generated
- AI-generated

The social UI should surface provenance labels so players know what they are reading.

---

# 14. POLITICAL MEDIA SYSTEM

Create fictional media outlets and player-created media organisations.

Possible channels:

- TV
- radio
- newspapers
- online outlets
- citizen journalists
- political commentary
- social creators

Media variables:

- reach
- credibility
- political alignment
- audience
- trust
- speed
- sensationalism level
- correction rate

Player content should interact with credibility and reach rather than being automatically persuasive.

---

# 15. SOCIAL NETWORK / FEED

The feed is the public nervous system.

Feed cards may include:

- breaking news
- campaign updates
- player posts
- election movements
- government announcements
- scandals
- rumours
- memes
- achievements
- state events
- national emergencies
- business news
- tournaments
- AI NPC commentary

## Event cards are actionable

Example:

`NATIONAL EMERGENCY`

Presidential convoy incident.

Status: High Alert

Actions:

- View Situation
- Assist
- Mobilise Team
- Monitor
- Open National Feed

The action should deep-link directly into the live event state.

---

# 16. COMMUNICATION ARCHITECTURE

Channels:

- direct messages
- team chat
- faction chat
- party chat
- state chat
- government channel
- cabinet channel
- presidential channel
- national broadcast
- event channel

Communication features:

- mentions
- reactions
- attachments where safe
- moderation
- reporting
- muting
- block
- privacy settings
- searchable history subject to permissions

Certain in-game communications may become relevant to fictional narrative systems, but private communications must be governed by explicit privacy and moderation rules.

---

# 17. UNIVERSAL ACTION SYSTEM

Every entity gets a standard contextual action surface.

## Entity anatomy

1. Identity
2. Status
3. Relationships
4. History
5. Available actions
6. Consequence preview
7. Activity

Entity types:

- player
- NPC
- state
- city/location
- party
- faction
- event
- election
- business
- ministry
- institution
- tournament

## Context menus

Desktop: right click / action button.

Mobile: long press / overflow action sheet.

---

# 18. UX ARCHITECTURE

NATASHAS UX is a system, not a collection of pages.

## 18.1 Persistent application shell

Desktop:

- global header
- world main area
- right-side social panel
- contextual bottom/action zone
- global notifications
- command/search

Mobile:

- compact header
- world area
- bottom navigation
- floating event/social controls
- bottom sheets
- swipeable drawers

## 18.2 Primary navigation

Recommended high-level surfaces:

- Home
- Map
- Action/Play
- Politics
- Economy
- Social
- Events
- AI
- Profile
- More

Not every role sees the same shortcuts.

## 18.3 Role cockpit

Home layout adapts according to role.

Citizen: local opportunities.

Campaign manager: campaign execution.

Governor: state command.

President: national command.

Media player: audience/content dashboard.

Business player: economic operations.

---

# 19. UX PRINCIPLE: NO ORPHAN FEATURES

Every feature must have:

- discoverable entry point
- contextual entry point
- notification entry where relevant
- search/command entry where sensible
- clear action state
- visible result
- history
- recovery path

A feature is incomplete until these exist.

---

# 20. CONSEQUENCE PREVIEW

Major actions display:

- expected immediate effects
- possible secondary effects
- cost
- duration
- reversibility
- affected entities
- risk

Use three confidence labels:

**Known**

**Likely**

**Uncertain**

Never falsely imply the simulation is deterministic when it is not.

---

# 21. ACTION RECEIPTS

After important actions show:

### ACTION COMPLETED

What happened.

Immediate numerical changes.

New event(s).

New relationship effects.

Financial effect.

Next recommended attention item.

The receipt should be dismissible but retrievable from history.

---

# 22. “WHY DID THIS HAPPEN?” SYSTEM

For major changes, expose causal summaries.

Example:

`Approval -8`

Main contributors:

- fuel shortage: -3
- opposition campaign: -2
- scandal rumour: -2
- delayed response: -1

The system should provide meaningful explanations without exposing exploitable internal formulas.

---

# 23. COMMAND PALETTE / SMART SEARCH

Desktop shortcut: Ctrl/Cmd + K.

Mobile: global search command.

Examples:

- “Find the governor of Lagos.”
- “Show my enemies.”
- “What happened while I was away?”
- “Show national emergencies.”
- “Campaign in Kano.”
- “Open my faction.”

Search results must know the current player's permissions and role.

---

# 24. DEEP LINKING

Notifications must open directly to the exact object.

Examples:

Alliance vote notification -> Alliance proposal -> vote action.

Emergency alert -> live emergency dashboard.

Campaign invitation -> campaign context -> accept/decline.

New message -> exact conversation.

This is mandatory for mobile usability.

---

# 25. ONBOARDING

First session should not explain everything.

Sequence:

1. Fictional simulation warning.
2. Create identity.
3. Select starting location.
4. Introduce one simple activity.
5. Show social feed.
6. Explain first consequence.
7. Introduce relationships.
8. Introduce politics.
9. Unlock deeper systems progressively.

The first meaningful action should occur quickly.

---

# 26. OFFLINE / WHILE-YOU-WERE-AWAY SYSTEM

The world continues while players are offline.

However, offline players must not be unfairly destroyed.

Provide:

- delegation
- trusted deputies
- action limits
- spending limits
- no-go rules
- emergency thresholds
- return summary

## Return summary

`WHILE YOU WERE AWAY`

Show:

- major world events
- political changes
- financial changes
- relationship changes
- messages
- emergencies
- opportunities
- deadlines

Actions:

`Review All`

`Act Now`

`Dismiss`

---

# 27. NOTIFICATION INTELLIGENCE

Priority tiers:

**RED — CRITICAL**

Immediate meaningful consequence.

**ORANGE — ACTION REQUIRED**

Player should respond soon.

**YELLOW — IMPORTANT**

Worth reviewing.

**BLUE — SOCIAL**

Social interactions and lower urgency.

**GRAY — DIGEST**

Low urgency.

Notification controls:

- quiet hours
- role-based priority
- event-specific subscriptions
- frequency limits
- digest mode
- emergency override

---

# 28. MAP EXPERIENCE

The map is a primary game surface.

Map layers:

- political control
- party strength
- faction activity
- public sentiment
- security
- economy
- infrastructure
- unrest
- election status
- player activity
- events

Users should tap a state and immediately get a compact intelligence drawer.

---

# 29. GOVERNOR SYSTEM

Eligibility system should evaluate:

- party support
- grassroots support
- reputation
- influence
- resources
- network
- state popularity
- campaign activity
- personal readiness

Governor controls:

- appointments
- budgets
- projects
- state policy
- resource allocation
- political relationships
- state communications

Overuse of executive powers increases the Abuse Index.

---

# 30. GOVERNOR REMOVAL

Removal requires configured thresholds and a political process.

Potential stages:

1. grievance accumulation
2. political mobilisation
3. legislative/faction threshold
4. removal motion
5. vote
6. result
7. succession
8. political aftermath

Replacement options depend on game state and institutional rules.

---

# 31. PRESIDENCY SYSTEM

The presidential office unlocks a national command centre.

Dashboard:

- national stability
- economy
- approval
- party control
- security
- state relations
- treasury
- opposition
- diplomatic situation
- national emergencies

The presidency is a management role, not an endgame screen.

---

# 32. PRESIDENTIAL REMOVAL / SUCCESSION

Same basic architecture as governorship but at national scope.

Possible triggers:

- political dissatisfaction
- institutional conflict
- approval collapse
- crisis management failure
- coalition breakdown
- constitutional game conditions

Results:

- removal
- survival
- replacement/succession
- election/transition where configured
- national consequences

---

# 33. ELECTION ENGINE

Election phases:

1. candidate declaration
2. eligibility
3. primaries
4. conventions
5. coalition building
6. campaign
7. debates
8. media cycle
9. live election period
10. results
11. disputes
12. audit/recount where configured
13. transition

## State-level calculations

Presidential influence should aggregate multiple state dynamics rather than use a single national popularity score.

---

# 34. ELECTION SIMULATION MODEL

Suggested conceptual weighting:

`Electoral Strength = f(Grassroots, Popularity, Party Strength, Coalition Support, Media, Economy, Trust, Candidate State Conditions, Campaign Quality, Random Events)`

Do not expose exact production coefficients to players.

Use server-side deterministic or seeded calculations where reproducibility is needed.

---

# 35. ELECTION INTEGRITY

Authoritative election state must be server-side.

Required controls:

- vote validation
- permission checks
- duplicate-vote prevention
- bot detection
- rate limiting
- event sourcing
- audit logs
- suspicious activity detection
- result verification
- dispute workflow

A client must never be able to submit an arbitrary final result.

---

# 36. CAMPAIGN SYSTEM

Campaign functions:

- rallies
- speeches
- debates
- travel
- coalition meetings
- staff management
- campaign budgets
- public messaging
- media appearances
- grassroots activity
- digital campaigning

Campaign actions consume combinations of:

- money
- energy
- political capital
- time
- relationships

---

# 37. POLITICAL DEBT

Promises become tracked obligations.

Each promise has:

- cost
- expected effect
- public expectation
- deadline
- political value
- delivery state

Statuses:

- promised
- underway
- delivered
- delayed
- abandoned
- broken

Broken commitments affect reputation and trust.

---

# 38. POLICY ENGINE

Government policies should have direct simulation consequences.

Major policy categories:

- education
- healthcare
- transport
- housing
- employment
- agriculture
- energy
- technology
- taxation
- infrastructure
- social welfare
- security

Each policy supports:

- budget cost
- implementation time
- target metrics
- public impact
- political impact
- side effects
- faction response

---

# 39. GOVERNMENT / MINISTRY SYSTEM

Each ministry record may contain:

- minister/leader
- budget
- efficiency
- political influence
- staff capacity
- current projects
- public satisfaction
- risk flags
- event queue

Government operations should be composable rather than custom-coded per ministry.

---

# 40. ECONOMIC ENGINE

Simulation dimensions:

- inflation
- commodity availability
- transport costs
- food prices
- employment
- business confidence
- consumer demand
- government revenue
- state revenue
- investment
- infrastructure output

The economy should have:

- sources
- sinks
- scarcity
- transaction records
- price changes
- business opportunities

---

# 41. PLAYER BUSINESS SYSTEM

Players may build fictional businesses.

Possible sectors:

- transport
- logistics
- hospitality
- retail
- agriculture
- construction
- technology
- media
- consulting
- entertainment

Business attributes:

- capital
- staff
- revenue
- expenses
- reputation
- supply
- demand
- risk
- political connections
- media visibility

---

# 42. BUSINESS-POLITICS INTERACTION

Interactions are represented as high-level game mechanics.

Examples:

- sponsorship
- political support
- lobbying
- investment
- patronage
- public-private project
- contract controversy
- conflict of interest
- investigation

Avoid procedural real-world corruption guidance.

---

# 43. SCANDAL ENGINE

Scandal objects include:

- allegation
- evidence level
- source
- public visibility
- credibility
- affected actors
- media reach
- political impact
- investigation status

Player response options may include:

- respond
- clarify
- deny
- cooperate
- seek legal review
- counter-message
- wait

No fictional accusation should be presented as a real-world fact.

---

# 44. CHAOS ENGINE

`CHAOS INDEX 0-100`

0–20 Stable

21–40 Tense

41–60 Unstable

61–80 Crisis

81–100 National Chaos

Drivers may include:

- economic shocks
- scandals
- political disputes
- protests
- election disputes
- security events
- policy failures
- faction conflicts

Chaos should alter event probability but not automatically dictate a single outcome.

---

# 45. PROTEST SYSTEM

Protests may arise from:

- poor governance
- shortages
- election disputes
- controversial policies
- economic pressure
- public dissatisfaction
- fictional security incidents

Possible states:

- emerging
- organised
- active
- escalated
- fragmented
- negotiated
- dispersed
- transformed into movement

## Protest hijack

A faction may try to capture a fictional protest's narrative or leadership.

Possible outcomes:

- movement capture
- faction split
- negotiation
- backlash
- increased chaos

The system must remain abstract and non-instructional.

---

# 46. HIGH-STAKES NARRATIVE EVENTS

The event system must support multi-stage stories.

Example pattern:

`Setup -> Disruption -> Alert -> Response -> Player Intervention -> Outcome -> Investigation -> Political Aftermath`

A presidential/candidate incident during travel can trigger:

- security alert
- candidate status change
- national attention
- support opportunities
- financial impact
- media cycle
- investigation
- campaign effect
- faction reactions

The actual event sequence varies by context.

---

# 47. NATIONAL EMERGENCY FRAMEWORK

States:

1. NORMAL
2. ELEVATED
3. HIGH ALERT
4. NATIONAL EMERGENCY
5. CRITICAL
6. NATIONAL CRISIS

Emergency state affects:

- government permissions
- information availability
- media intensity
- security activity
- travel
- economy
- player missions
- public sentiment

Major events should create explicit visual changes in the UI.

---

# 48. STEALTH / COVERT SYSTEM

Stealth is abstracted as:

- secrecy
- information gathering
- hidden objectives
- risk management
- detection probability

Use high-level fictional actions only.

No real-world evasion or criminal operational instructions should be embedded in the game design or AI prompts.

---

# 49. VIOLENCE / CRIMINAL NARRATIVE BOUNDARY

NATASHAS may contain fictional violence, criminal plots, weapons ownership and assassination-attempt storylines as narrative mechanics.

The implementation must focus on:

- state changes
- risks
- consequences
- investigation
- reputation
- resource loss
- imprisonment/character status
- death/permanent loss
- national crisis

Do not build mechanics that teach real-world harm.

---

# 50. PRESIDENTIAL / CANDIDATE RESCUE NARRATIVES

These events are high-value showcases of the event engine.

Possible trigger:

A candidate is travelling to a campaign event or foreign engagement.

A fictional disruption occurs.

The event state changes.

Security response activates.

Relevant players receive actionable notifications.

Players may assist according to permissions and role.

Possible outcomes include:

- successful recovery
- delay
- injury/status impact
- campaign disruption
- political backlash
- investigation
- faction blame
- national instability increase

The event should be classified as a state or national emergency when thresholds are crossed.

---

# 51. EVENT ENGINE ARCHITECTURE

Every event is a data object, not a hard-coded page.

Fields:

- event_id
- event_type
- world_scope
- severity
- visibility
- trigger conditions
- participants
- locations
- prerequisites
- start time
- expiry time
- stages
- available actions
- eligible roles
- possible outcomes
- consequence definitions
- reward definitions
- penalty definitions
- social-feed card
- notification rules
- narrative template
- safety classification
- analytics tags
- historical persistence

---

# 52. EVENT TRIGGERS

Triggers may be:

- scheduled
- probability-based
- state-threshold based
- relationship-based
- election-based
- economic
- player action
- AI-generated proposal
- milestone-based
- chain-event based

AI may suggest an event, but the authoritative simulation service must validate it against rules.

---

# 53. EVENT CHAINS AND BRANCHING

Events may branch based on player decisions.

Example:

`Policy -> Unrest -> Protest -> Media Cycle -> Faction Mobilisation -> Removal Vote`

Every branch should have:

- explicit conditions
- historical record
- causal metadata

---

# 54. AI STORY DIRECTOR

The Story Director watches the world and detects:

- unresolved conflicts
- rising tension
- strong rivalries
- unusual player trajectories
- political instability
- economic stress
- underused content
- narrative opportunities

It can propose narrative events to the simulation engine.

### Rule

AI proposes.

Rules validate.

Simulation commits.

Database records.

Social layer communicates.

---

# 55. AI STACK

Recommended agents/services:

1. AI Player Adviser
2. AI Story Director
3. AI Political Analyst
4. AI Election Analyst
5. AI Economist
6. AI Opponent
7. AI Citizen Simulator
8. AI Media Simulator
9. AI Security Director
10. AI Moderator
11. AI Content Assistant
12. AI Counterfactual Engine

These should be implemented as services/modules rather than one monolithic agent.

---

# 56. AI TOOL-CALLING MODEL

AI should not directly edit the database.

Instead it uses controlled tools:

- get_world_state
- get_player_state
- get_relationships
- simulate_action
- propose_event
- draft_message
- analyse_campaign
- create_counterfactual
- query_history
- explain_change

Every tool has:

- schema validation
- permission checks
- rate limits
- logging
- deterministic output where appropriate

---

# 57. AI GOVERNANCE

AI outputs should have classifications:

- recommendation
- prediction
- narrative proposal
- simulation result
- generated content
- explanation

Authoritative state changes require non-AI server validation.

---

# 58. AI USAGE / CREDITS

## Core principle

Basic AI must be widely accessible.

Advanced AI can be metered.

### Base AI

- explain changes
- basic adviser
- simple summaries
- simple counterfactual
- basic political analysis

### Advanced AI Credits

- deep simulations
- extended narrative generation
- complex strategic modelling
- large counterfactual trees
- high-cost generated media
- advanced NPC interactions
- creator-grade content generation

Do not consume ordinary political points for standard AI use.

---

# 59. AI CREDIT SOURCES

Potential sources:

- daily allocation
- subscription allowance
- achievements
- seasonal rewards
- promotional events
- marketplace activity
- paid AI Credit packs

Real-money purchase of AI Credits must not directly translate into electoral victory.

---

# 60. COUNTERFACTUAL ENGINE

The engine operates from a world snapshot.

Process:

1. Capture authoritative state snapshot.
2. Apply hypothetical decision.
3. Run simulation for defined horizon.
4. Return projected outcomes.
5. Discard hypothetical state.
6. Preserve original state unchanged.

Counterfactual views should show:

- selected decision
- projected results
- major contributing factors
- uncertainty range
- time horizon
- assumptions

Label clearly:

`SIMULATED COUNTERFACTUAL — DOES NOT CHANGE THE LIVE WORLD`

---

# 61. COUNTERFACTUAL USE CASES

- campaign decisions
- policy options
- coalition choices
- economic investments
- crisis response
- candidate strategy
- business decisions
- election scenarios
- governance choices

Advanced branches may be metered through AI Credits.

---

# 62. AI EXPLAINABILITY

Player questions:

- Why did my popularity fall?
- Why did the faction leave me?
- Why did this event trigger?
- Why did the economy decline?
- Why am I eligible/not eligible?

Provide causal explanations.

Never falsely claim certainty when the system is probabilistic.

---

# 63. LEADERBOARD SYSTEM

Leaderboards are first-class.

## Global categories

- Overall Power
- Political Influence
- Governance
- Economic Achievement
- Grassroots Influence
- Media Influence
- Kingmaker Score
- Election Performance
- Crisis Management
- Faction Strength
- State Performance
- Tournament Performance
- Fair Play
- Legacy
- Seasonal Rank

## State leaderboards

Each state can have local rankings for:

- players
- factions
- businesses
- campaigns
- governors

## Role leaderboards

- governors
- strategists
- journalists
- entrepreneurs
- activists
- campaign managers
- kingmakers

---

# 64. LEADERBOARD FAIRNESS

Rank calculations exclude or quarantine suspicious activity.

Potential integrity states:

- active
- under review
- quarantined
- suspended
- restored

A Fair Play Score should support long-term trust.

---

# 65. SEASONAL COMPETITION

Leaderboards operate across:

- daily
- weekly
- monthly
- seasonal
- historical

Competitive ranks may reset.

Historical accomplishments remain.

---

# 66. LEGACY SYSTEM

Permanent legacy tracks:

- offices held
- election achievements
- governance outcomes
- crisis management
- economic accomplishments
- faction survival
- relationships
- historic events
- season achievements

This supports the NATASHAS Chronicle and Yearbook.

---

# 67. TOURNAMENT SYSTEM

Competitive modes:

- solo
- duo
- team
- party
- faction
- state
- national

Tournament concepts:

- State Championship
- Regional Championship
- Governor Challenge
- Kingmaker Challenge
- Crisis Management Challenge
- Presidential Challenge
- National Republic Cup

The persistent world and tournament arenas should be logically separated where needed so competitive rules remain fair.

---

# 68. SPECTATOR MODE

Major events can be observed.

Features:

- live map
- election broadcast
- event timeline
- AI commentary
- player commentary
- major player cards
- live ranking

This supports streaming and social content opportunities.

---

# 69. NATASHAS CHRONICLE

The system automatically records major history.

Examples:

- election milestones
- unusual leadership changes
- major crises
- dynasties
- influential kingmakers
- major economic events
- faction conflicts

History should be queryable.

---

# 70. YEARBOOK / DOCUMENTARY FEATURE

Generate narrative history from verified event records.

Possible output:

`THE STORY OF YOUR REPUBLIC`

Sections:

- opening era
- major political figures
- elections
- crises
- economic changes
- faction history
- turning points
- final season state

AI-generated prose is layered over verified game data.

---

# 71. POLITICAL DYNASTIES

When a major player character exits the active world, a successor can inherit defined portions of:

- organisation
- faction
- relationships
- reputation
- enemies
- historical status

Inheritance is not guaranteed victory.

---

# 72. NPC LIFE SYSTEM

NPCs should have:

- roles
- goals
- relationships
- location
- employment
- faction preferences
- political ambitions
- trust
- memory

NPCs can:

- change jobs
- join factions
- leave factions
- form businesses
- become political figures
- become journalists
- be investigated
- return to relevance

---

# 73. EMERGENT STORY SYSTEM

The AI should prioritise stories that emerge from real simulation tension rather than randomly injecting unrelated drama.

Example:

Rival has high media reach + high money + low trust.

AI identifies narrative opportunity.

Potential story:

`A former ally begins releasing disputed internal documents.`

The story is only instantiated if rules permit it.

---

# 74. INTERNATIONAL AFFAIRS

Presidential players may encounter fictional international situations.

Systems:

- foreign visits
- diplomatic meetings
- trade negotiations
- international investment
- summits
- treaties
- diplomatic disputes
- international crises

Foreign entities should be abstracted or fictionalised where necessary.

---

# 75. PLAYER-CREATED ORGANISATIONS

Allow, subject to progression and moderation:

- political movements
- pressure groups
- businesses
- media organisations
- campaign groups
- civil associations
- think tanks
- community groups

Each becomes a persistent organisational object.

---

# 76. REAL MONEY / VIRTUAL MONEY ARCHITECTURE

Separate these three categories:

### GAME CURRENCY
Virtual gameplay resources.

### AI CREDITS
AI/service consumption units.

### REAL MONEY
Actual payment transactions.

Never store or represent these as one undifferentiated balance.

---

# 77. REAL-MONEY USE CASES

Suitable initial use cases:

- cosmetics
- premium subscriptions
- premium narrative content
- AI Credits
- marketplace assets
- creator tooling
- optional convenience
- sponsored events

Future regulated competitive-money features are a separate compliance workstream.

---

# 78. PAY-TO-WIN PREVENTION

Do not let money directly buy:

- votes
- guaranteed office
- guaranteed alliances
- political immunity
- guaranteed influence
- guaranteed election victory

Allow players to buy expression, content and premium services without selling the fundamental political outcome.

---

# 79. ECONOMIC LEDGER

Every valuable transaction should create a ledger entry with:

- transaction_id
- actor
- source
- destination
- currency type
- amount
- reason
- related object
- timestamp
- server authority marker
- audit identifier

For virtual currency, balances should be derived from authoritative transactions or protected state transitions rather than client-side arithmetic.

---

# 80. GAMEFORGE INTEGRATION

GameForge is the parent ecosystem.

NATASHAS can use GameForge services for:

- asset marketplace
- AI-assisted creation
- hosting
- analytics
- publishing
- multiplayer components
- content pipelines
- asset metadata
- developer services

NATASHAS remains a distinct standalone product and brand.

---

# 81. GAMEFORGE MARKETPLACE

Required asset categories:

1. characters
2. sprites
3. animations
4. backgrounds
5. sound effects
6. music
7. UI kits
8. game mechanics
9. code modules
10. shaders
11. particle effects
12. 3D models
13. fonts
14. game templates

Assets should be AI-ready.

Metadata:

- compatibility
- license
- dimensions
- performance profile
- style
- tags
- dependencies
- genre
- engine/framework
- usage rights

---

# 82. TECHNICAL ARCHITECTURE — RECOMMENDED BASELINE

Recommended default architecture for a serious production build:

## Frontend shell

- React + TypeScript
- server-rendered/application shell framework suitable for responsive web delivery
- a design system with tokens
- state management for local UI state
- query/cache layer for server data

## Game runtime

For a primarily 2D/2.5D experience, use a browser game runtime such as Phaser or Pixi-based architecture, with React owning the application shell and the game renderer mounted as a controlled surface.

For selected 3D scenes, use a dedicated WebGL/WebGPU-compatible renderer such as Three.js or an appropriate game runtime.

Do not put all UI inside the game canvas. Critical interface surfaces should remain semantic HTML where practical.

## Backend

A modular TypeScript service layer is recommended for the initial product so game logic, shared schemas and web services can share types. NestJS/Fastify-style architecture is a suitable pattern; equivalent production frameworks are acceptable.

## Real-time

- WebSocket transport
- event gateway
- pub/sub backbone
- server-authoritative event processing

## Data

- PostgreSQL for authoritative relational data
- Redis for cache, locks, ephemeral presence and queues
- object storage for media
- analytics/event warehouse for high-volume telemetry

## Async infrastructure

- message broker / queue
- worker processes
- scheduled jobs
- event processors

The exact infrastructure provider can be selected later.

---

# 83. SERVICE BOUNDARIES

Recommended core services:

1. Identity Service
2. Player Service
3. World Service
4. Simulation Service
5. Politics Service
6. Election Service
7. Economy Service
8. Relationship Service
9. Event Service
10. Social Service
11. Messaging Service
12. Notification Service
13. AI Orchestration Service
14. Counterfactual Service
15. Leaderboard Service
16. Tournament Service
17. Payment Service
18. Marketplace Adapter
19. Moderation Service
20. Analytics Service
21. Admin/Game Master Service
22. Asset Service

For MVP, these may be deployed as a modular monolith with strong internal boundaries before extracting individual services.

This is preferable to premature microservices.

---

# 84. ARCHITECTURE STRATEGY — MODULAR MONOLITH FIRST

Recommended initial approach:

`ONE DEPLOYABLE BACKEND + STRICT MODULE BOUNDARIES + ASYNC WORKERS`

Why:

- faster iteration
- easier debugging
- lower operational complexity
- simpler transactional consistency
- easier local development
- easier AI coding-agent integration

Extract services when:

- load profile requires it
- team ownership requires it
- failure isolation is important
- scaling characteristics differ materially

---

# 85. DATABASE DOMAIN MODEL

Core tables/entities should include at least:

## Identity

- users
- sessions
- devices
- auth_factors

## Players

- players
- player_stats
- player_roles
- player_progression
- player_inventory
- player_locations

## Political

- parties
- factions
- memberships
- offices
- candidates
- campaigns
- elections
- election_votes
- election_results
- political_promises
- political_capital

## Geography

- zones
- states
- local_areas
- communities
- locations

## Governance

- ministries
- officials
- budgets
- policies
- projects
- appointments

## Relationships

- relationships
- relationship_events
- alliances
- betrayals
- endorsements

## Economy

- wallets
- ledger_entries
- businesses
- business_finances
- markets
- prices
- assets

## Social

- posts
- comments
- reactions
- feeds
- follows
- messages
- channels
- mentions

## Events

- events
- event_instances
- event_participants
- event_actions
- event_outcomes
- event_chains

## AI

- ai_requests
- ai_usage
- ai_credits
- ai_scenarios
- counterfactuals
- ai_recommendations

## Competition

- leaderboards
- leaderboard_scores
- seasons
- tournaments
- tournament_entries

## Security

- moderation_cases
- risk_signals
- fraud_events
- security_audit_logs
- admin_actions

## History

- world_events
- player_history
- chronicle_entries
- legacy_records

---

# 86. EVENT-SOURCED / AUDITABLE DATA

Critical systems should produce immutable or append-only event records.

Examples:

`PLAYER_JOINED_PARTY`

`PLAYER_ENDORSED_CANDIDATE`

`GOVERNOR_ELECTED`

`POLICY_APPROVED`

`TREASURY_TRANSFERRED`

`EMERGENCY_DECLARED`

`ELECTION_VOTE_CAST`

`GOVERNOR_REMOVAL_PASSED`

`PRESIDENTIAL_SUCCESSION_STARTED`

`FACTION_SPLIT`

Event records support:

- audit
- analytics
- replay
- history
- debugging
- chronicle
- AI context

---

# 87. SIMULATION ENGINE DESIGN

The simulation should be composed of engines.

### Political Engine

Power, approval, alliances, elections.

### Economy Engine

Prices, revenue, business, scarcity.

### Population Engine

Public sentiment and aggregate citizen groups.

### Relationship Engine

Trust and alliance dynamics.

### Event Engine

Triggers and chain events.

### Governance Engine

Policies, budgets, performance.

### Risk Engine

Scandal, instability, emergency probabilities.

### Narrative Engine

Story proposals and presentation.

### Time Engine

Schedules and expiry.

### Reward Engine

XP, currency, achievements and ranking changes.

---

# 88. SIMULATION PROCESSING LOOP

Conceptual cycle:

1. Load current relevant state.
2. Collect scheduled and triggered events.
3. Validate player actions.
4. Process authoritative actions.
5. Update dependent systems.
6. Evaluate threshold crossings.
7. Emit state-change events.
8. Generate narrative opportunities.
9. Update social/feed surfaces.
10. Update notifications.
11. Persist history.
12. Publish analytics events.

Critical actions should be transactionally safe.

---

# 89. PROBABILITY MODEL

Use weighted probabilities rather than pure random chaos.

Conceptual form:

`P(Event) = BaseRate x ConditionModifiers x RelationshipModifiers x StateModifiers x PlayerModifiers x TemporalModifiers`

Clamp to valid probability ranges.

Use seeded random values for reproducibility when practical.

Never expose exploitable internal coefficients.

---

# 90. RELATIONSHIP PROPAGATION

Relationship strength can influence:

- referrals
- alliance formation
- trust
- endorsement probability
- betrayal probability
- information flow
- faction cohesion

A graph model should support indirect effects while preventing runaway propagation.

Use capped influence or decay functions rather than unlimited network multiplication.

---

# 91. REPUTATION MODEL

Reputation can be multi-dimensional:

- competence
- trust
- reliability
- integrity
- popularity
- crisis performance
- media sentiment

A player can have high popularity but low trust.

Reputation should decay slowly without new evidence and react to verified outcomes more strongly than rumours.

---

# 92. POWER BALANCE MODEL

Power should emerge from multiple systems.

Suggested conceptual model:

`Power = weighted combination of Political + Social + Institutional + Media + Grassroots + Economic + Intelligence + Reputation`

The weights should vary by role and context.

Example:

A journalist has high Media and Social relevance.

A governor has high Institutional relevance.

A business magnate has high Economic and Social relevance.

A kingmaker has high Political + Social + Grassroots relevance.

---

# 93. ECONOMIC MODEL

Use:

- sources
- sinks
- scarcity
- transaction fees where appropriate
- progression costs
- event costs
- business expenses
- campaign expenses
- maintenance

Avoid infinite passive income.

Every high-value source should have a balancing sink.

---

# 94. HEALTH / ENERGY MODEL

Energy should regenerate over time.

Energy may be spent on:

- campaigning
- travel
- events
- long negotiations
- emergency response
- some work activities

Health is a slower-moving state.

Stress should influence performance and recovery.

Do not create punitive mechanics that require users to stay online continuously.

---

# 95. TRAVEL SYSTEM

Travel may matter strategically.

Travel can influence:

- campaign timing
- energy
- event attendance
- costs
- availability
- narrative triggers

Use abstract location states rather than attempting to model every road in the real world.

Potential travel statuses:

- local
- inter-state
- national
- international

---

# 96. EMERGENCY RESPONSE PARTICIPATION

When an event becomes major enough, eligible players see actions according to role.

Citizen:

- observe
- support approved assistance
- share official update

Campaign operative:

- mobilise campaign response

Governor:

- coordinate state-level action

President:

- invoke national response systems

Media player:

- report

Security-role player:

- perform fictional in-game response actions defined by the game system

Every role sees only actions it is authorised to perform.

---

# 97. ROLE-BASED PERMISSIONS

Use explicit permission policies.

Example:

`governor.state.budget.update`

`president.national.emergency.activate`

`journalist.media.publish`

`citizen.community.join`

`party.leader.nominate_candidate`

Permissions should be evaluated server-side.

---

# 98. FRONTEND STATE MODEL

Separate:

### UI STATE

Drawers, modals, filters, local preferences.

### SERVER STATE

Player, political, social, event and economy data.

### REAL-TIME STATE

Presence, live feed, event progress, election updates.

### SIMULATION STATE

Authoritative calculations not stored as uncontrolled client variables.

---

# 99. REAL-TIME ARCHITECTURE

Use WebSockets for:

- chat
- presence
- event updates
- live elections
- leaderboard changes
- emergency alerts
- social feed updates

Not every update needs to be pushed instantly.

Use event priority:

- critical immediate
- high priority near-real-time
- normal batched
- digest

---

# 100. SCALABILITY MODEL

Potential tiers:

### Tier 1

Single-region production.

### Tier 2

Horizontal web/backend scaling.

### Tier 3

Dedicated simulation workers.

### Tier 4

Partitioned world/event processing.

### Tier 5

Regional presence and global edge delivery.

Do not assume the MVP needs maximum scale on day one.

Build interfaces that allow scaling.

---

# 101. WORLD SHARDING

A future scalable approach may partition the world into:

- world shards
- season worlds
- tournament instances

A single persistent shard can remain the flagship experience.

Tournaments can use isolated rule sets and instances.

---

# 102. LOW-BANDWIDTH DELIVERY

Performance techniques:

- compressed image formats
- sprite atlases
- lazy loading
- code splitting
- route-level chunking
- progressive asset loading
- caching
- adaptive quality
- low-data mode
- reduced animation mode
- text-first fallback for critical information

---

# 103. GAME RENDERING STRATEGY

The first production target should prioritise:

- 2D/2.5D world scenes
- rich UI
- animated characters
- maps
- contextual scenes

3D should be introduced where it produces meaningful gameplay value.

Avoid wasting bandwidth on purely decorative geometry.

---

# 104. MOBILE-FIRST INTERACTION RULES

Targets:

- touch-friendly controls
- large action areas
- one-thumb priority actions
- bottom sheets
- swipeable contextual panels
- concise text
- persistent important status
- minimal keyboard dependency

Do not simply shrink desktop UI for mobile.

---

# 105. ACCESSIBILITY

Target a modern accessibility standard baseline.

Support:

- keyboard navigation
- semantic controls
- screen-reader labels
- captions
- text scaling
- reduced motion
- sufficient contrast
- non-colour status cues
- accessible forms
- accessible notifications

Canvas-based game information should have accessible equivalents where practical.

---

# 106. NATASHAS DESIGN SYSTEM AUTHORITY

The NATASHAS Design System is a governed product authority, not merely a visual style guide.

It defines the canonical interaction and visual language through which every player-facing and administrator-facing experience is expressed.

## 106.1 Authority and precedence

The Design System Authority governs:

- visual tokens
- component behaviour
- interaction patterns
- navigation patterns
- responsive behaviour
- information hierarchy
- status semantics
- motion language
- accessibility conventions
- error and recovery patterns
- game-state visualisation
- role-based cockpit composition
- contextual action patterns
- notification patterns
- event presentation
- AI interaction patterns

Approved design-system decisions are binding on implementation unless explicitly amended. Engineering must not invent competing UI patterns for the same interaction without design-system approval.

## 106.2 Single source of visual truth

The canonical design system should contain:

- design tokens
- component library
- responsive rules
- interaction states
- accessibility requirements
- content hierarchy rules
- motion rules
- game-state semantics
- example compositions
- design-to-code mappings

The approved design-system source becomes the reference for Magic Patterns, frontend engineers, Claude Code and future GameForge design tooling.

## 106.3 Game-state visual language

NATASHAS must maintain consistent visual semantics for:

**Normal**

**Positive**

**Warning**

**Danger**

**Emergency**

**Critical**

**Locked**

**Unavailable**

**Pending**

**Completed**

**Failed**

**Secret**

**Rumour**

**Verified**

**Counterfactual**

**AI-generated**

**Player-generated**

These states must not rely on colour alone.

## 106.4 Universal interaction grammar

The design system must standardise how players interact with entities including players, NPCs, states, parties, factions, elections, events, businesses, institutions and locations.

The interaction grammar is:

**Identity → Status → Relationships → History → Actions → Consequences → Activity**

## 106.5 Context-first UX

The design system must prioritise contextual access over deep navigation.

Actions should be available from the object or screen where the player is already operating.

Important flows should support:

- direct action
- action preview
- result receipt
- causal explanation
- history
- recovery

## 106.6 Design-system governance

Any newly introduced component or interaction must answer:

1. What existing component does this replace or extend?
2. Why can an existing component not be reused?
3. What desktop and mobile states are required?
4. What accessibility states are required?
5. What loading, error, empty and offline states are required?
6. What game-state semantics does it use?

The goal is to prevent design fragmentation as NATASHAS grows.

## 106.7 Design-to-engineering handoff

The final approved system should be documented in a form that allows an engineering AI such as Claude Code to implement components without inventing a different visual language.

Every major component should have:

- purpose
- anatomy
- variants
- states
- behaviour
- responsive behaviour
- accessibility behaviour
- content rules
- token references
- implementation notes

## 106.8 Design authority workflow

Recommended sequence:

**NATASHAS Constitution**
↓
**NATASHAS Master Blueprint**
↓
**UX / Information Architecture**
↓
**Design System Authority**
↓
**Interactive Prototype**
↓
**UX Validation**
↓
**Approved Design**
↓
**Claude Code Implementation**
↓
**Visual Regression / UX QA**

Magic Patterns should serve as the primary high-fidelity product-design and prototyping environment for the first implementation cycle, while Claude Design may be used for alternative visual exploration and design critique.

# 106. DESIGN SYSTEM

Create a NATASHAS design system with:

- typography scale
- colour tokens
- spacing tokens
- radii
- elevation
- icon system
- states
- badges
- cards
- modals
- drawers
- tables
- timelines
- maps
- charts
- feed components
- action sheets
- alerts
- notifications
- status indicators

Design tone:

- energetic
- premium
- Nigerian
- modern
- cinematic
- information-rich
- uncluttered

---

# 107. CORE SCREEN INVENTORY

## Entry

- splash
- fictional warning
- sign-up
- login
- onboarding
- avatar/identity setup

## Main

- home
- map
- action centre
- social feed
- notifications
- messages

## Player

- public profile
- private stats
- relationships
- history
- achievements
- inventory
- finances
- health

## Politics

- party hub
- faction hub
- campaign hub
- election hub
- candidate profile
- state politics
- national politics
- governor dashboard
- presidential dashboard

## Economy

- wallet
- business dashboard
- market
- projects
- investments
- transaction history

## Events

- live events
- emergency centre
- event history
- event participation

## Competition

- leaderboards
- tournaments
- rankings
- seasons

## AI

- AI adviser
- AI analysis
- counterfactuals
- AI history/explanations
- credit wallet

## Admin

- Game Master dashboard
- world management
- player management
- event editor
- AI controls
- assets
- economy
- moderation
- security
- analytics

---

# 108. ADMIN / GAME MASTER CONSOLE

The console should have:

## World

- states
- locations
- population
- economy
- environment

## Political

- parties
- factions
- candidates
- offices
- elections

## Governance

- ministries
- policies
- budgets
- projects

## Players

- account
- role
- state
- progression
- moderation
- risk

## Content

- assets
- characters
- buildings
- vehicles
- music
- sound
- dialogue

## Events

- templates
- live instances
- chains
- triggers
- emergency events

## AI

- prompts
- agent policies
- tool permissions
- event proposals
- model configuration
- usage

## Commerce

- products
- subscriptions
- AI Credits
- marketplace
- promotions
- sponsorships

## Security

- incidents
- suspicious behaviour
- bans
- rate limits
- audit logs

## Analytics

- world health
- economy health
- engagement
- retention
- live operations

---

# 109. GOD VIEW

Authorised Game Masters should have a national simulation map with drill-down.

Layers:

- national
- zone
- state
- faction
- player
- event
- economy
- security

This is an operational tool, not a player feature.

---

# 110. LIVE OPS

The live team needs emergency controls.

Commands:

- pause event
- disable event type
- freeze selected economy action
- suspend account
- mute channel
- disable AI narrative category
- trigger emergency message
- roll back configuration
- close tournament

Every intervention is audited.

---

# 111. SECURITY ARCHITECTURE

Security priorities:

- secure authentication
- session protection
- device awareness
- server-side validation
- API authorisation
- rate limiting
- abuse detection
- secure WebSockets
- fraud controls
- payment security
- audit logs
- secrets management
- encrypted transport
- least privilege

---

# 112. ANTI-CHEAT ARCHITECTURE

Signals:

- impossible progression
- abnormal action frequency
- suspicious voting patterns
- multi-account correlation
- repeated device fingerprint anomalies where legally appropriate
- unusual resource generation
- automated navigation patterns
- message spam
- client tampering

Use risk scoring rather than automatic permanent punishment for every anomaly.

---

# 113. COLLUSION DETECTION

Important for:

- elections
- tournaments
- factions
- leaderboards
- economy

Signals may include:

- coordinated timing
- abnormal transfer patterns
- repeated reciprocal actions
- improbable voting concentration
- suspicious account clusters

Human review remains necessary for high-impact decisions.

---

# 114. MODERATION ARCHITECTURE

Combine:

- automated detection
- user reports
- rate limiting
- keyword/semantic filters
- context analysis
- escalation rules
- human review
- appeals

The moderation system should distinguish:

- gameplay fiction
- player-to-player abuse
- hate/harassment
- threats
- fraud/scams
- sexual content
- spam
- impersonation

---

# 115. PRIVACY ARCHITECTURE

Provide:

- account privacy
- profile visibility controls
- DM controls
- block/mute
- data export
- account deletion
- consent records
- retention policies
- security incident workflows

Any personally identifying information should be minimised and protected.

---

# 116. REAL-WORLD DATA POLICY

The game may use fictional data by default.

If real-world data is ever incorporated for authenticity, define:

- licensing
- source
- refresh frequency
- attribution
- legal review
- whether data is descriptive or gameplay simulated

Never imply game-generated political outcomes are predictions of real politics.

---

# 117. NIGERIAN CULTURAL PIPELINE

Content teams should maintain a cultural reference library covering:

- environments
- architecture
- transportation
- signage
- music styles
- language patterns
- humour
- fashion
- social interactions
- food references
- community structures
- public spaces

Cultural authenticity should be reviewed by Nigerian creators rather than generated blindly.

---

# 118. LANGUAGE STRATEGY

Initial product language can be Nigerian English.

Progressive localisation:

- Nigerian Pidgin
- Yoruba
- Igbo
- Hausa

Use languages where they add immersion:

- NPC dialogue
- radio
- speeches
- social content
- event narration
- cultural interactions

---

# 119. SOUND DESIGN

Audio categories:

- urban ambience
- markets
- transport
- rallies
- government offices
- nightlife
- election night
- emergency
- social celebration
- dramatic political moments

Audio should adapt to location and event state.

All external audio content requires appropriate licensing.

---

# 120. NOTIFICATION / SOCIAL EVENT FEED INTEGRATION

Every major event should decide:

- should it appear in the feed?
- who receives push notification?
- what severity?
- what is the deep link?
- how long is it visible?
- is it public/private/faction-only?

Event objects therefore own their communication rules.

---

# 121. PLAYER FEED PERSONALISATION

Feed ranking should combine:

- player role
- location
- party
- relationships
- active events
- importance
- recency
- social affinity
- urgency

Avoid over-personalisation that creates a political echo chamber.

Mix in broader national developments.

---

# 122. CONTENT GENERATION PIPELINE

AI-generated content passes through:

`Generate -> Validate -> Moderate -> Attribute -> Store -> Publish`

Possible generated content:

- NPC dialogue
- fictional news summaries
- event copy
- world commentary
- campaign wording
- visual concepts
- audio scripts

High-impact political claims must use game-state facts and fictional context.

---

# 123. PLAYER-GENERATED CONTENT

Player posts may support:

- text
- images
- approved media
- memes
- announcements
- campaign content

Moderation should run before or immediately after publication depending on risk category.

---

# 124. MONETIZATION LADDER

Recommended ladder:

### Free

Core world
Basic AI
Basic social
Core progression
Basic events

### Plus / Premium

Higher AI allocation
Cosmetics
Premium narrative content
Additional convenience
Enhanced profile customisation

### Creator / Pro

Advanced AI tools
Marketplace creator tools
Content creation
Asset workflows

### Enterprise / Sponsored

Brand activations
Sponsored worlds/events
Custom game experiences
GameForge integrations

---

# 125. BILLBOARD / BRAND SYSTEM

Billboard object:

- location
- surface
- campaign
- creative
- visibility
- target scope
- schedule
- impression counter
- interaction type

Brand content must never interrupt core gameplay excessively.

---

# 126. SPONSORED EVENTS

Possible sponsor surfaces:

- tournament
- sports-like challenge
- cultural event
- national festival
- state event
- creator competition

Sponsored content must be clearly labelled.

---

# 127. ANALYTICS MODEL

Track at least:

### Acquisition

- acquisition source
- signup completion
- first session activation

### Engagement

- DAU
- WAU
- MAU
- session frequency
- average session duration
- meaningful action rate

### Social

- posts
- messages
- group formation
- event participation

### Political

- elections
- campaigns
- faction changes
- office transitions

### Economy

- transactions
- business creation
- virtual currency supply
- virtual currency sinks

### AI

- requests
- model type
- cost
- user role
- satisfaction
- repeat use

### Competitive

- rankings
- tournament entries
- suspicious activity

---

# 128. KEY PRODUCT METRICS

North-star candidates:

**Meaningful Actions per Active Player**

**Day-7 Retention**

**Day-30 Retention**

**Event Participation Rate**

**Social Interaction Rate**

**First Meaningful Action Time**

**Return-from-Offline Action Rate**

**AI Assistance Usefulness**

**Political Progression Diversity**

**Economy Health Index**

**Fair Play Integrity Rate**

---

# 129. GAME HEALTH DASHBOARD

The operations team should monitor:

- top players/factions
- faction concentration
- economy inflation
- average wealth
- wealth inequality
- event frequency
- emergency frequency
- player churn
- notification volume
- AI credit consumption
- moderation volume
- suspicious behaviour

The system should alert when thresholds become unhealthy.

---

# 130. BALANCING FRAMEWORK

Balance should be data-driven.

Every major system should have:

- expected range
- lower bound
- upper bound
- inflation/decay rule
- monitoring metric
- intervention control

Test new changes in a simulation environment before production.

---

# 131. WORLD SIMULATION TEST HARNESS

The development environment should support:

- simulated NPC population
- scripted player bots
- accelerated time
- random seeds
- replay
- deterministic mode
- stress mode
- economic stress tests
- election simulations
- crisis simulations

This is critical for validating emergent systems.

---

# 132. AI TEST HARNESS

For each AI agent, test:

- correct tool selection
- permission boundaries
- hallucination resistance
- safety boundaries
- prompt injection resistance
- state consistency
- deterministic tool results
- response quality
- cost
- latency

AI must be tested as a software subsystem, not just a prompt.

---

# 133. TESTING PYRAMID

## Unit

Simulation formulas, permissions, validators.

## Integration

Economy + politics + events.

## Contract

API schemas and service boundaries.

## End-to-end

Player flows.

## Real-time

WebSocket behaviour.

## Load

Concurrent player/event simulations.

## Security

Authentication, authorisation, fraud, abuse.

## Game QA

Rules, balance, progression, narrative.

## Accessibility

Keyboard, screen readers, touch, reduced motion.

---

# 134. DISASTER RECOVERY

Required capabilities:

- database backups
- point-in-time recovery where supported
- object storage redundancy
- event-log retention
- infrastructure-as-code
- rollback procedures
- emergency maintenance mode
- incident runbooks

Persistent-world data is mission critical.

---

# 135. DEPLOYMENT PIPELINE

Suggested lifecycle:

`LOCAL -> DEV -> QA -> STAGING -> CANARY -> PRODUCTION`

Automated checks:

- lint
- typecheck
- unit tests
- integration tests
- security checks
- migration validation
- build
- asset validation
- bundle size checks
- smoke tests

---

# 136. INFRASTRUCTURE

Production infrastructure should separate:

- frontend edge delivery
- API services
- WebSocket gateway
- database
- cache
- object storage
- background workers
- AI gateway
- analytics pipeline
- monitoring

Containerisation should be the default for production deployment, but deployment should remain provider-neutral.

---

# 137. ENVIRONMENT CONFIGURATION

Use environment-specific secrets/config:

- database URL
- cache URL
- object storage credentials
- AI provider credentials
- payment credentials
- email/push credentials
- observability keys

Never commit secrets to source control.

---

# 138. API STYLE

Use versioned APIs.

Example:

`/api/v1/me`

`/api/v1/states/:id`

`/api/v1/events/:id`

`/api/v1/elections/:id`

`/api/v1/leaderboards`

`/api/v1/ai/explain`

`/api/v1/ai/counterfactual`

Use idempotency keys for sensitive commands.

---

# 139. COMMAND / MUTATION PATTERN

Client sends:

`COMMAND`

Server validates:

`AUTH -> PERMISSION -> STATE -> RULES -> COST -> RISK`

Simulation executes:

`CALCULATE -> COMMIT -> EVENT`

Server returns:

`RESULT + CHANGES + NEXT ACTIONS`

This pattern should be standardised throughout the game.

---

# 140. AUDITABILITY

Every important mutation should have:

- actor
- action
- before state reference
- after state reference
- server timestamp
- correlation ID
- related event ID

Administrative mutations must include administrator identity and reason where required.

---

# 141. OBSERVABILITY

Track:

- request latency
- simulation latency
- WebSocket connection health
- queue depth
- database latency
- error rate
- AI latency
- AI cost
- event throughput
- notification throughput

Use traces/correlation IDs across services.

---

# 142. UX PERFORMANCE BUDGET

Define explicit budgets for:

- first meaningful paint
- interactive shell
- initial game scene
- social feed load
- route transition
- event detail open
- command search

Measure on lower-end mobile hardware and realistic Nigerian network conditions.

---

# 143. CONTENT PERFORMANCE BUDGET

Each asset should have:

- file size target
- dimensions
- format
- loading priority
- caching policy
- low-data alternative

Heavy assets should never block critical game actions.

---

# 144. GAMEFORGE AI GAME FACTORY COMPATIBILITY

NATASHAS should be structured so GameForge AI could inspect and modify:

- game rules
- assets
- event templates
- UI components
- NPC behaviour
- simulation parameters
- localisation
- content

AI-assisted development should operate through a structured project manifest and tool APIs rather than arbitrary source rewriting.

---

# 145. GAMEFORGE AI PROJECT MANIFEST

Conceptual manifest sections:

```yaml
project:
  id: natashas
  type: persistent-politics-simulation
  version: x.y

world:
  states: 36
  fct: true
  zones: 6

gameplay:
  elections: enabled
  governance: enabled
  economy: enabled
  social: enabled
  tournaments: enabled

ai:
  story_director: enabled
  adviser: enabled
  counterfactual: enabled

safety:
  fictional_simulation_boundary: strict

monetization:
  pay_to_win: false
```

The final schema should be JSON Schema validated.

---

# 146. GAME CONTENT SCHEMA

Create data-driven templates for:

- event
- state
- party
- faction
- NPC
- policy
- business
- role
- tournament
- achievement
- leaderboard
- notification
- narrative chapter

This lets content designers work without changing core code.

---

# 147. ACHIEVEMENT SYSTEM

Achievement families:

- political
- economic
- social
- survival
- governance
- emergency
- tournament
- legacy
- exploration
- community

Achievements should be visible in profile and feed where the player chooses to share.

---

# 148. REWARD SYSTEM

Rewards can be:

- virtual currency
- cosmetics
- profile badges
- titles
- AI Credits
- narrative unlocks
- organisation cosmetics
- leaderboard recognition

Avoid rewards that directly break competitive balance.

---

# 149. PROFILE TITLES

Examples:

- Governor
- Kingmaker
- Crisis Manager
- Master Strategist
- State Builder
- Political Survivor
- Media Mogul
- Republic Architect

Titles are earned through achievements and legacy.

---

# 150. DAILY / WEEKLY ACTIVITY MODEL

The world should offer optional reasons to return:

- political developments
- scheduled debates
- business decisions
- faction meetings
- events
- tournaments
- AI briefings
- local happenings

Avoid requiring daily logins to preserve scarce resources.

---

# 151. 24/7 ENGAGEMENT PRINCIPLE

The player should have reasons to return because the world changes, not because the game punishes absence.

Good retention:

`new event + unresolved relationship + opportunity + historical consequence`

Bad retention:

`login or lose everything`

---

# 152. PLAYER SUCCESSION / LOSS DESIGN

Failure states:

- loss of election
- loss of office
- financial crisis
- reputation collapse
- faction split
- political exile in-game
- imprisonment in-game
- character death

Recovery systems:

- rebuilding
- entrepreneurship
- alliance formation
- media work
- new campaign
- new organisation

---

# 153. INTERNATIONAL / FOREIGN VISIT EVENT TEMPLATE

Reusable template:

1. Visit scheduled.
2. Delegation formed.
3. Market/public expectations change.
4. Event opportunity appears.
5. Disruption or diplomatic challenge may occur.
6. Players react according to role.
7. Event resolves.
8. Media narrative generated.
9. Economic/diplomatic consequences stored.

This template is intentionally generic so many stories can be created from it.

---

# 154. EMERGENCY EVENT UX

At emergency creation:

1. visual mode changes
2. alert banner appears
3. affected players receive notification
4. feed card published
5. action panel opens for eligible players
6. timeline shows status
7. outcome updates in real time
8. aftermath becomes history

The player should always know:

**what happened**

**why it matters**

**what I can do**

**what happens next**

---

# 155. SOCIAL FEED EVENT LIFECYCLE

`Trigger -> Generate Card -> Rank -> Notify -> Engage -> Resolve -> Archive`

Archived events remain searchable in history and the Chronicle.

---

# 156. SEARCH / DISCOVERY INDEX

Index:

- players
- NPCs
- parties
- factions
- states
- businesses
- events
- posts
- elections
- tournaments

Search results are permission-aware.

Search ranking:

`relevance + recency + relationship + urgency + role relevance`

---

# 157. HELP / CODEX

Help exists but is secondary.

Provide:

- short contextual tips
- deep codex
- glossary
- how-it-works guides
- role guides
- formula explanations at a conceptual level
- safety notice

The goal is to learn by playing, not by reading a 200-page manual.

---

# 158. PLAYER SUPPORT

In-game support should include:

- report bug
- report player
- report content
- account recovery
- payment support
- moderation appeal
- gameplay explanation

Support should be linked contextually from relevant screens.

---

# 159. ACCESSIBILITY OF COMPLEX INFORMATION

Charts and political maps must have:

- summary text
- data tables where practical
- non-visual labels
- keyboard navigation
- alternative indicators

Complexity must remain accessible.

---

# 160. BUSINESS MODEL

Core revenue streams:

1. Premium subscription
2. AI Credits
3. Cosmetics
4. Premium narrative content
5. Marketplace revenue share
6. Sponsored events
7. Branded billboards
8. Creator/pro tools
9. Enterprise/brand experiences
10. GameForge ecosystem services

Long-term optional:

- tournament sponsorship
- regulated competitive-money features subject to compliance

---

# 161. MARKETPLACE ECONOMICS

GameForge marketplace can operate with a creator revenue split model.

A candidate starting point is a creator-friendly majority share, with the exact percentage determined after payment, infrastructure, tax and platform cost analysis.

Potential creator revenue sources:

- direct asset sales
- subscriptions
- usage royalties
- sponsored assets
- template sales

---

# 162. PLAYER ECONOMY TRUST

Players should always be able to inspect:

- virtual balances
- transaction history
- reward source
- fees
- AI Credit usage
- premium purchases

No unexplained deductions.

---

# 163. REAL MONEY ROADMAP

### Phase A

Cosmetics/subscriptions.

### Phase B

Premium AI and marketplace.

### Phase C

Sponsorships and creator economy.

### Phase D

Evaluate regulated prize/competitive-money products only after legal review.

---

# 164. LEGAL / SAFETY PRODUCT GATES

Before release, review:

- game terms
- privacy policy
- payment terms
- moderation policy
- fictional simulation notice
- intellectual property
- music licensing
- advertising rules
- real-money features
- AI content controls
- Nigerian data-protection obligations
- age rating / suitability

Any real-world political-person reference system receives a separate legal review.

---

# 165. MVP DEFINITION

The MVP should prove the central loop, not the entire universe.

However, the data model should be 36-state ready.

## MVP Core

- account/authentication
- first-visit disclaimer
- player identity
- home cockpit
- map
- states
- basic social feed
- player relationships
- parties
- basic campaign
- state-level politics
- basic election
- governor progression
- player economy
- event engine
- notifications
- basic AI adviser
- basic counterfactual
- leaderboards
- basic admin console
- anti-cheat foundations
- analytics
- PWA shell

---

# 166. VERTICAL SLICE

The first playable vertical slice should contain:

**One player**

**One state-level campaign**

**One opposition faction**

**One dynamic event**

**One social feed event card**

**One consequence preview**

**One action receipt**

**One AI explanation**

**One mini-election**

**One leaderboard update**

**One offline return summary**

This demonstrates the NATASHAS experience end-to-end.

---

# 167. ALPHA

Expand to:

- all 36-state datasets
- multiple roles
- state politics
- multiple parties
- factions
- state economy
- business
- deeper social
- events
- tournament prototype
- advanced AI

---

# 168. CLOSED BETA

Add:

- presidential race
- national politics
- state-to-national relationship
- crisis engine
- major narrative chains
- international affairs
- richer NPCs
- dynasty/legacy
- spectator mode

---

# 169. PUBLIC BETA / VERSION 1

Add:

- marketplace integration
- cosmetics
- subscriptions
- sponsored billboards
- creator content
- expanded tournaments
- advanced leaderboards
- AI Credits
- Chronicle/Yearbook

---

# 170. POST-LAUNCH

Potential expansion:

- deeper local-government simulation
- richer diplomacy
- more advanced media
- creator economy
- user-authored narrative arcs
- GameForge integration expansion
- regional African republic variants
- cross-game GameForge identity

---

# 171. DEVELOPMENT TEAM

Recommended core team:

### Product

- product lead
- game producer
- game economy designer
- systems/game designer

### Design

- product designer
- UX designer
- visual designer
- motion designer
- game UI designer

### Engineering

- frontend engineers
- game/client engineer
- backend engineers
- real-time engineer
- AI engineer
- data/analytics engineer
- DevOps/SRE
- security engineer

### Content

- narrative designer
- Nigerian cultural consultant/content team
- audio designer
- illustrator/3D/asset artist

### Quality

- QA engineers
- game balance tester
- trust & safety reviewer

---

# 172. AI DEVELOPMENT WORKFLOW

AI coding systems should work in stages:

1. read constitution
2. read architecture
3. read schema
4. generate module plan
5. implement small unit
6. run tests
7. inspect failures
8. update module
9. integrate
10. run simulation tests
11. generate documentation
12. commit

Do not ask an AI agent to generate the complete application in one pass.

---

# 173. AI CODING AGENT GUARDRAILS

The development AI must:

- never bypass auth
- never disable validation
- never expose secrets
- never alter database schema without migration
- never modify simulation rules without tests
- never hard-code player-specific cheats
- never bypass safety boundary
- use typed interfaces
- write tests with new logic
- update documentation

---

# 174. REPOSITORY STRUCTURE

Recommended conceptual structure:

```text
apps/
  web/
  game-client/
  admin/

services/
  api/
  simulation-worker/
  notification-worker/
  ai-worker/

packages/
  ui/
  game-rules/
  schemas/
  types/
  simulation/
  security/
  analytics/
  content/
  localization/

infra/
  docker/
  terraform/
  deployment/

content/
  states/
  parties/
  factions/
  events/
  npcs/
  audio/
  assets/

scripts/
  simulation/
  seed/
  tests/
```

The exact repository may differ; the modular separation is the important part.

---

# 175. GAME RULE PACKAGE

All critical formulas and business rules should live in a shared, testable rule package or equivalent server-side module.

Examples:

- eligibility
- election calculations
- cost calculations
- risk
- reputation
- power
- relationships
- economy
- event triggers

Do not spread critical formulas randomly across controllers.

---

# 176. CONFIGURATION-DRIVEN BALANCE

Parameters should be data/config driven:

- thresholds
- costs
- reward amounts
- cooldowns
- event weights
- decay rates
- relationship modifiers

Use versioned configs.

A balance change should not require a code redeploy when safe to avoid it.

---

# 177. WORLD SNAPSHOT SYSTEM

Create named snapshots for:

- counterfactuals
- debugging
- testing
- event replay
- tournaments
- migration

Snapshots must have version metadata.

---

# 178. REPLAY / HISTORY ENGINE

For important sessions/events, support replay of:

- sequence of actions
- state changes
- event outcomes
- notifications
- social posts

This powers the Chronicle and debugging.

---

# 179. OBSERVER DATA PRIVACY

Spectator views must expose only approved public information.

Private player information never leaks through:

- live events
- leaderboards
- APIs
- social feed
- spectator mode

---

# 180. FRAUD AND PAYMENT SECURITY

Where real money exists:

- verify payment server-side
- never trust client success messages
- reconcile provider webhooks
- idempotency
- chargeback handling
- purchase history
- account recovery
- suspicious purchase detection

---

# 181. ACCOUNT RECOVERY

Support:

- secure email recovery
- optional MFA
- device/session management
- suspicious-login alerts
- session revocation

Social and political progress may have substantial time value, so account security is critical.

---

# 182. DATA RETENTION

Define retention by domain:

- gameplay history
- social content
- moderation data
- payment data
- analytics
- security logs

Do not retain everything forever by default.

---

# 183. DATABASE PERFORMANCE

Use:

- appropriate indexes
- partitioning where justified
- read replicas when needed
- event aggregation
- cache layers
- pagination
- materialised views for heavy dashboards

Avoid repeatedly calculating national leaderboards from raw event tables on every request.

---

# 184. LEADERBOARD PERFORMANCE

Precompute or incrementally maintain leaderboard scores.

Separate:

- live score
- verified score
- historical score

Allow asynchronous recalculation.

---

# 185. SOCIAL FEED PERFORMANCE

Use:

- feed ranking service
- denormalised feed entries where needed
- cursor pagination
- cached public objects
- batched counters

Avoid expensive joins per feed item.

---

# 186. EVENT ENGINE PERFORMANCE

Use a queue or scheduler for event trigger checks.

Avoid scanning every player every second.

Use:

- subscriptions
- threshold monitors
- scheduled jobs
- indexed conditions
- targeted event evaluation

---

# 187. NPC SCALABILITY

Not every NPC needs continuous full simulation.

Use simulation tiers:

### Tier A

Important named NPCs — full state.

### Tier B

Active local NPCs — moderate state.

### Tier C

Aggregate population — statistical model.

This prevents enormous compute waste.

---

# 188. AI COST CONTROL

AI cost controls:

- cache summaries
- cache repeated explanations
- use small models for simple tasks
- use advanced models only when necessary
- batch background generation
- precompute content
- use structured outputs
- truncate context intelligently
- meter high-cost features

The game should always prefer deterministic simulation over unnecessary LLM calls.

---

# 189. AI LATENCY CLASSES

### Instant

Basic explanation, labels, search assistance.

### Fast

Role adviser, simple analysis.

### Delayed

Complex scenario.

### Background

Story generation, Chronicle, large simulation.

The UI must tell the player when a result is processing.

---

# 190. AI UX

AI should appear contextual, not as an intrusive chatbot.

Examples:

On a scandal card:

`Ask AI what this means`

On an election:

`Analyse my chances`

On a policy decision:

`Compare outcomes`

On return:

`Summarise what changed`

The dedicated AI screen can remain available for advanced users.

---

# 191. PLAYER ASSISTANCE LEVELS

Players can select:

- minimal guidance
- standard guidance
- strategic assistant
- expert mode

This lets expert players hide suggestions while new players receive more assistance.

---

# 192. UX STATUS LANGUAGE

Use consistent statuses throughout the game.

Recommended system:

- Live
- Pending
- Processing
- Locked
- Available
- Completed
- At Risk
- Critical
- Under Review
- Expired
- Cancelled

Avoid inventing multiple labels for the same state.

---

# 193. ERROR UX

Never show:

`Something went wrong.`

without useful context.

Instead:

`We couldn't complete the campaign transfer.`

`No resources were deducted.`

`Try again.`

This is especially important for economic actions.

---

# 194. EMPTY STATES

Every empty state should explain:

- what is empty
- why
- what can be done next

Example:

`You have no faction yet.`

`Join an existing faction or create one when eligible.`

`Browse factions` / `View requirements`

---

# 195. DEADLINES

Critical timed actions must show:

- exact deadline
- relative countdown
- timezone handling
- consequence of expiry
- extension/recovery options where applicable

Countdown timers should use the authoritative server time.

---

# 196. EVENT PARTICIPATION

Every event should answer:

**Can I participate?**

**Why am I eligible?**

**What does participation cost?**

**What can I gain?**

**What could I lose?**

**When does it end?**

**What happens if I do nothing?**

This is central to top-tier UX.

---

# 197. NOTHING IMPORTANT SHOULD BE HIDDEN

For any consequential system, players should be able to inspect:

- required conditions
- cost
- role/permission
- deadline
- outcome range
- active risks
- current status

The game may retain some mystery around hidden information, but it must not hide rules the player needs to act fairly.

---

# 198. DYNAMIC HOME SCREEN

The home screen should be an intelligence dashboard, not a static menu.

Suggested areas:

### YOUR WORLD

Where you are.

### YOUR POWER

Current political/economic/social position.

### WHAT MATTERS NOW

Top urgent items.

### EVENTS

Current events.

### SOCIAL

Important feed stories.

### MONEY

Current wallet state.

### RELATIONSHIPS

Important people.

### AI BRIEF

Optional 3-line summary.

---

# 199. PLAYER PSYCHOLOGY / RETENTION DESIGN

NATASHAS should create:

- curiosity
- identity
- rivalry
- mastery
- social belonging
- long-term goals
- uncertainty
- comeback opportunities
- historical attachment

Avoid compulsive punitive mechanics as the primary retention driver.

---

# 200. THE NATASHAS DIFFERENTIATOR

The strongest differentiator is not:

"a game about Nigerian politics."

It is:

> **A living Nigerian political world where the social feed, simulation engine, AI narrative engine, player relationships, economy, elections and historical memory continuously react to one another.**

That is the actual moat.

---

# 201. PRODUCT PHASE ROADMAP

## Phase 0 — Constitution

Completed.

## Phase 1 — Vertical Slice

Build the smallest end-to-end NATASHAS world.

## Phase 2 — Systems Expansion

Politics, economy, social, events, AI.

## Phase 3 — National Simulation

36 states, presidency, national events.

## Phase 4 — Competitive Layer

Leaderboards, tournaments, seasons.

## Phase 5 — Monetization

Premium, AI Credits, marketplace, advertising.

## Phase 6 — Scale

Performance, sharding, international players.

---

# 202. DEVELOPMENT PRIORITY ORDER

Recommended dependency order:

1. identity/auth
2. world/state data
3. player state
4. rule engine
5. economy ledger
6. relationships
7. event engine
8. politics/election
9. social feed
10. notifications
11. AI adviser
12. counterfactual
13. leaderboards
14. tournament
15. admin console
16. monetization
17. advanced AI
18. advanced international affairs
19. marketplace/GameForge integration

---

# 203. FIRST 10 CRITICAL PLAYER FLOWS

1. Create identity.
2. Enter world.
3. Discover local opportunity.
4. Join a political group.
5. Build relationship.
6. Receive social event alert.
7. Take consequential action.
8. See action receipt.
9. Ask why something changed.
10. Return later and receive offline summary.

These flows should become automated UX acceptance tests.

---

# 204. FIRST 10 CRITICAL ADMIN FLOWS

1. create/edit state
2. create party
3. create faction
4. create event template
5. trigger emergency event
6. inspect player
7. inspect economic transaction
8. review leaderboard integrity
9. moderate content
10. inspect simulation trace

---

# 205. FIRST 10 CRITICAL SECURITY TESTS

1. client attempts to alter wallet
2. client attempts to alter vote
3. client attempts to alter role
4. duplicate vote
5. replay attack
6. expired auth token
7. permission escalation
8. WebSocket spoof
9. API rate abuse
10. AI tool injection attempt

---

# 206. ACCEPTANCE CRITERIA — CORE UX

A player must be able to:

- know where they are
- know what role they hold
- know what matters now
- know what changed
- find a relevant action quickly
- understand consequences before acting
- understand results after acting
- recover from errors
- receive relevant event alerts
- continue where they left off

---

# 207. ACCEPTANCE CRITERIA — CORE GAME

The game must support:

- player progression
- state politics
- parties
- factions
- campaigns
- elections
- governor progression
- presidential progression architecture
- economy
- business
- relationships
- social feed
- events
- emergencies
- AI
- counterfactuals
- leaderboards
- seasons
- legacy

---

# 208. ACCEPTANCE CRITERIA — CORE INTEGRITY

No client should be able to independently:

- mint authoritative money
- alter election results
- grant themselves office
- alter leaderboard score
- bypass eligibility
- bypass moderation
- execute protected admin actions

---

# 209. ACCEPTANCE CRITERIA — AI

AI must:

- understand current player context
- obey permissions
- use trusted tools
- identify uncertainty
- distinguish simulation from fact
- not mutate authoritative state directly
- respect safety boundaries
- support cost/latency controls

---

# 210. ACCEPTANCE CRITERIA — MONETIZATION

A player who pays must not automatically defeat a skilled non-paying player solely through payment.

A player must clearly understand:

- what they purchased
- what it affects
- whether it is consumable
- refund/support options

---

# 211. ACCEPTANCE CRITERIA — EMERGENCIES

Every major emergency must have:

- visible severity
- affected scope
- participant list
- clear actions
- timing
- consequence updates
- social integration
- final outcome
- historical record

---

# 212. ACCEPTANCE CRITERIA — COUNTERFACTUALS

A counterfactual must:

- not mutate live state
- identify assumptions
- state that it is simulated
- show projection horizon
- surface uncertainty
- use authorised state snapshot

---

# 213. ACCEPTANCE CRITERIA — LEADERBOARDS

Leaderboards must:

- update correctly
- preserve history
- support role/state/season categories
- detect suspicious scores
- provide fair-play controls

---

# 214. FIRST-VISIT EXPERIENCE SPECIFICATION

On first visit:

1. load lightweight shell
2. show disclaimer modal
3. show fictional simulation label
4. require explicit acknowledgement
5. store acknowledgement status with version
6. if disclaimer version changes materially, require re-acknowledgement

---

# 215. FEATURE FLAG SYSTEM

All major features should support feature flags.

Examples:

- presidency
- national emergency
- international affairs
- AI counterfactual
- monetization
- tournaments
- language packs

Flags should support:

- development
- staging
- beta
- percentage rollout
- role-based rollout
- emergency disable

---

# 216. EXPERIMENTATION

A/B tests can be used for:

- onboarding
- dashboard layout
- notification frequency
- AI phrasing
- event density
- monetization presentation

Never A/B test critical election integrity or financial accounting logic in ways that create inconsistent competitive rules.

---

# 217. DATA SCIENCE FOUNDATION

Use telemetry to answer:

- Where do players drop off?
- Which roles are underused?
- Which events create meaningful engagement?
- Which factions become too dominant?
- Is the economy healthy?
- Is AI actually helping?
- Which notifications create value vs noise?

---

# 218. EVENT VALUE SCORE

Every event should have an internal score based on:

- participation
- duration
- player satisfaction
- social activity
- repeat engagement
- economic impact
- narrative significance

This helps live operations determine which event types deserve more investment.

---

# 219. SOCIAL VALUE SCORE

Social interactions can be measured for:

- meaningful conversation
- alliance creation
- community formation
- event participation
- player retention

Avoid optimising solely for raw message volume.

---

# 220. ECONOMIC HEALTH SCORE

Monitor:

- money supply growth
- sinks/sources
- average wealth
- top-player concentration
- transaction frequency
- business viability
- market liquidity

Trigger live-ops alerts when the economy drifts outside healthy bounds.

---

# 221. POWER CONCENTRATION CONTROL

Monitor if one faction, party, business or player becomes permanently dominant.

Potential balancing mechanisms:

- increased opposition opportunities
- faction fragmentation
- rising public dissatisfaction
- changing election rules within the fictional system
- new movements
- economic competition

Do not arbitrarily nerf successful players without transparent game reasoning.

---

# 222. FAIR COMEBACK SYSTEM

When a player loses major status, the system should surface meaningful rebuilding routes:

`YOU LOST OFFICE`

Possible paths:

- join opposition
- start organisation
- build business
- rebuild reputation
- pursue local politics
- media career
- form coalition

This turns defeat into new gameplay.

---

# 223. ENDGAME DESIGN

There is no single permanent ending.

Players can continue through:

- office changes
- political cycles
- new seasons
- dynasty succession
- business expansion
- leadership changes
- legacy building

A character ending is not necessarily a player ending.

---

# 224. PLAYER-TO-PLAYER SOCIAL CONTRACT

Players should understand:

- what is public
- what is private
- what is fictional
- what can be reported
- what content is prohibited
- what gameplay conduct is allowed

This should be surfaced during onboarding and in the community rules.

---

# 225. VERSIONING

Version separately:

- world rules
- simulation formulas
- content packs
- AI prompts/policies
- database schema
- UI design system
- feature flags

A historical season should retain the version context needed to interpret its results.

---

# 226. CHANGE MANAGEMENT

Any major rule change should specify:

- why
- affected systems
- affected players
- migration
- balancing impact
- communication plan
- rollback path

Avoid silent rule changes in competitive seasons.

---

# 227. RELEASE NOTES

NATASHAS release notes should explain:

- new systems
- balance changes
- important bug fixes
- policy changes
- event changes
- safety changes

Use plain language.

---

# 228. LIVE EVENT CALENDAR

Players should have an accessible calendar showing:

- elections
- debates
- faction meetings
- tournaments
- seasonal milestones
- government deadlines
- narrative events

Calendar items deep-link into their relevant screens.

---

# 229. PERSONAL PLANNER

Optional player planner for:

- campaign schedules
- political commitments
- business deadlines
- events
- meetings

AI can summarise upcoming obligations.

---

# 230. PERSONAL GOALS

Players can define goals:

- become governor
- build company
- become kingmaker
- win tournament
- improve state
- build media organisation

The system can show progress without turning gameplay into a rigid quest list.

---

# 231. SOCIAL GROUP GOALS

Factions and organisations may set shared goals.

Examples:

- win a state
- achieve coalition milestone
- build public approval
- win tournament
- complete policy project

Group progress should be visible to authorised members.

---

# 232. AI GOAL ASSISTANT

AI can interpret a player goal and suggest actions.

Example:

Goal: become governor.

AI returns:

- current gaps
- strongest assets
- likely obstacles
- recommended sequence
- risks

Do not guarantee success.

---

# 233. PLAYER EDUCATION

The simulation can teach:

- trade-offs
- negotiation
- economics
- governance
- coalition strategy
- cause/effect

Do not frame fictional output as authoritative real-world political truth.

---

# 234. CONTENT SAFETY LABELS

Potentially intense content can be labelled:

- Political conflict
- Violence in fictional gameplay
- Crime themes
- Crisis events
- Strong language where applicable

Players may be offered optional content intensity settings when practical.

---

# 235. AGE / ACCESS DESIGN

Determine final age-rating strategy through legal/product review.

Do not assume that browser access means unrestricted access.

Implement age-related controls as appropriate to the final rating and monetization model.

---

# 236. ROLLBACK STRATEGY

When a simulation bug materially changes the world:

- stop affected system
- identify affected records
- inspect event chain
- determine scope
- communicate
- restore or compensate using audited tools
- document incident

Never silently rewrite history when a transparent correction is necessary.

---

# 237. PLAYER TRUST PRINCIPLE

The player should believe:

- the game is fair
- the game knows what happened
- the game will tell them what happened
- their money is accounted for
- their actions matter
- moderation is reviewable
- elections are trustworthy
- AI does not secretly cheat

Trust is a core product feature.

---

# 238. NATASHAS MASTER UX RULE

The complete UX rule is:

> **Everything the player needs should be accessible from where the player currently is, explain itself before and after consequential actions, and never require repeated navigation or a manual to understand basic operation.**

---

# 239. NATASHAS MASTER SIMULATION RULE

> **Every major outcome should be the result of understandable interacting systems, not arbitrary developer intervention.**

---

# 240. NATASHAS MASTER AI RULE

> **AI proposes, assists, explains and simulates; authoritative game systems validate and commit.**

---

# 241. NATASHAS MASTER ECONOMY RULE

> **Money can enhance participation but must not simply purchase political victory.**

---

# 242. NATASHAS MASTER SOCIAL RULE

> **The social network is part of gameplay, not an isolated chat feature.**

---

# 243. NATASHAS MASTER HISTORY RULE

> **If something materially changed the world, the world should remember it.**

---

# 244. NATASHAS MASTER EVENT RULE

> **Major events must be visible, actionable, understandable and historically persistent.**

---

# 245. NATASHAS MASTER SECURITY RULE

> **Never trust the client with authoritative competitive state.**

---

# 246. NATASHAS MASTER DESIGN RULE

> **Deep simulation must be surfaced through simple, context-aware UX.**

---

# 247. THE LAUNCH EXPERIENCE

The launch should immediately communicate that NATASHAS is not another menu-heavy politics game.

Opening sequence concept:

1. cinematic Nigerian-inspired world introduction
2. fiction disclaimer
3. choose identity
4. map opens
5. local story appears
6. social feed becomes active
7. first choice appears
8. consequence shown
9. AI explains
10. new opportunity unlocked

The first session should feel like entering a world, not opening a dashboard.

---

# 248. THE “WOW” MOMENT

Within the first meaningful session, the player should experience at least one unexpected but understandable chain:

`ACTION -> REACTION -> SOCIAL COVERAGE -> NEW OPPORTUNITY`

Example:

Player supports a local candidate.

Candidate gains momentum.

A rival posts a challenge.

The player's social feed changes.

AI explains the political opportunity.

Player receives a new alliance option.

The player realises:

**“This world is reacting to me.”**

---

# 249. THE LONG-TERM “WOW” MOMENT

After months of play, the player should be able to open the Chronicle and see:

- their first political action
- first alliance
- first betrayal
- first election
- major crisis
- rise to power
- failures
- comeback
- current position

Then the player sees:

> **You changed this world.**

That is the long-term emotional payoff.

---

# 250. FINAL BUILD PRINCIPLE

NATASHAS should be built as a platform-level simulation, not as a giant collection of scripted screens.

Every major feature must connect to:

- authoritative state
- event system
- social representation
- notification logic
- history
- analytics
- permissions
- UX
- AI context

That is how the product remains extensible.

---

# 251. DEFINITION OF DONE FOR BLUEPRINTING

At this point the product specification is conceptually complete enough to begin implementation design.

The next implementation documents should be generated as separate detailed artifacts:

1. **NATASHAS System Architecture Specification**
2. **NATASHAS Complete Database Schema**
3. **NATASHAS API Contract Specification**
4. **NATASHAS Simulation Mathematics & Algorithms Specification**
5. **NATASHAS UX / Information Architecture Specification**
6. **NATASHAS Full Screen & Interaction Inventory**
7. **NATASHAS AI Agent & Tool Specification**
8. **NATASHAS Event / Narrative Authoring Specification**
9. **NATASHAS Economy & Monetization Specification**
10. **NATASHAS Security / Anti-Cheat Specification**
11. **NATASHAS Admin / Game Master Console Specification**
12. **NATASHAS QA / Testing Specification**
13. **NATASHAS DevOps / Deployment Specification**
14. **NATASHAS GameForge Integration Specification**
15. **NATASHAS Claude/AI Development Master Prompt**

These should be produced from this document, not invented independently.

---

# 252. FINAL PRODUCT STATEMENT

NATASHAS — Naija Table Shakers is envisioned as:

> **A living fictional Nigerian republic where players build lives, relationships, businesses and political power; where elections, governance, economics, media, emergencies and social activity continuously interact; where AI explains and expands the world without controlling it; where every major action carries understandable consequences; where the world remembers what happened; and where power belongs to whoever can keep it.**

# END OF MASTER BLUEPRINT
