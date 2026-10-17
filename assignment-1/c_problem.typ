#import "template.typ": *

#show: page-setup.with(
  title: [Problem Statement — SmartRoom: occupancy-aware classroom energy control],
  part: [(c) Problem statement],
)

== Context and problem
UBB uses a large number of classrooms, seminar rooms and laboratories spread over many buildings.
Their lighting and heating are controlled manually: lights stay on after the last class of the day,
radiators heat rooms that are empty between seminars or over the weekend, and nobody knows which rooms
waste the most energy, because consumption is measured, at best, per building. This waste works
against SDG 7 (target 7.3, energy efficiency) and against UBB's own Climate Action Plan, which asks for
more smart buildings, motion sensors in common spaces and lower electricity use per person. It is also
one of the reasons UBB loses points in the _Energy & Climate Change_ criterion of UI GreenMetric.

== Goal
Design an embedded system, *SmartRoom*, in which every classroom is managed by a small *Room
Controller* that detects whether the room is occupied and cooperates with a central *Building Energy
Manager* to keep lights and heating on only when the room is used or about to be used. The system must
reduce wasted energy without reducing comfort, and must report consumption per room.

== Actors
#table(
  columns: (auto, 1fr),
  [Actor], [Role],
  [*Room Controller (RC)*], [Embedded device in each room: presence sensor, light relay, radiator valve
    and energy meter. Holds the room state: _Eco_, _Preheating_, _Active_, _Vacating_.],
  [*Building Energy Manager (BEM)*], [Central controller of a building. Knows the timetable, decides
    when rooms are switched on or off, and aggregates energy data.],
  [Room users (students, teachers)], [Occupy rooms; can press a manual override button on the RC.],
  [Facility administrator], [Receives reports and alerts from the BEM; sets comfort and economy setpoints.],
  [UBB timetable system], [Provides the BEM with the schedule of classes for each room.],
)

== Communications (signals)
The core of the system is the dialogue between the two main actors, *RC* and *BEM*:

#table(
  columns: (auto, auto, 1fr),
  [Direction], [Signal], [Meaning],
  [BEM → RC], [`preheat`], [A class is scheduled in this room in 30 minutes: bring heating to comfort level.],
  [BEM → RC], [`activate`], [Room may be used: lights may be switched on by presence, heating stays at comfort.],
  [BEM → RC], [`deactivate`], [Room is empty and no class follows soon: lights off, heating to economy.],
  [RC → BEM], [`occupied`], [The presence sensor has detected people in the room.],
  [RC → BEM], [`empty`], [No presence detected for a grace period (e.g. 10 minutes).],
  [RC → BEM], [`energyReport`], [Periodic report of the room's consumption since the last report.],
)
#v(-0.2em)
Secondary communications: the timetable system sends the schedule to the BEM; the BEM sends daily
reports and anomaly alerts to the facility administrator (e.g. a room that consumes energy while
reported empty); a user's override button makes the RC send `occupied` immediately.

== Typical interaction
The room starts in _Eco_. Thirty minutes before a seminar the BEM sends `preheat`; the RC enters
_Preheating_. Students arrive, the RC detects them and sends `occupied`; the BEM answers `activate` and
the room is _Active_. After the seminar the RC sees no one for the grace period, enters _Vacating_ and
sends `empty`; if no class follows, the BEM sends `deactivate` and the room returns to _Eco_. At the end
of each period the RC sends `energyReport`, which the BEM aggregates for the administrator.

== Requirements and constraints
- *Safety and comfort:* a room that is occupied is never left dark or at economy temperature; the
  manual override always works, even if the BEM is unreachable.
- *Efficiency:* lights are never on in a room reported empty longer than the grace period.
- *Privacy:* only presence (yes/no) is sensed — no cameras, no identification of people.
- *Low cost and retrofittable*, so it can scale to all UBB buildings and count toward the smart-building
  targets of the Climate Action Plan.
