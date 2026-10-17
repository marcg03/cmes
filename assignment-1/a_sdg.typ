#import "template.typ": *

#show: page-setup.with(
  title: [SDG 7 — Affordable and Clean Energy],
  part: [(a) SDG page],
)

== Why we chose SDG 7
Of the 17 Sustainable Development Goals we selected *SDG 7: "Ensure access to affordable, reliable,
sustainable and modern energy for all"*. Energy sits underneath almost every other goal (health,
education, industry, climate action), and it is also the goal where embedded and connected systems
can make the most direct, measurable difference: every kilowatt-hour that a sensor-driven controller
avoids wasting is a kilowatt-hour that does not have to be generated. That makes SDG 7 a natural fit
for a lab project in Computational Models for Embedded Systems.

== The targets
- *7.1 — Universal access* to electricity (7.1.1) and to clean cooking fuels and technologies (7.1.2).
- *7.2 — Renewables:* substantially increase the share of renewable energy in the global energy mix.
- *7.3 — Efficiency:* double the global rate of improvement in energy intensity by 2030, compared with
  the 1990–2010 average.
- *7.a / 7.b — Means of implementation:* international cooperation, investment and infrastructure for
  clean energy, especially in developing countries.

== Where the world stands (Tracking SDG 7 — Energy Progress Report 2025)
- *Access:* about 92% of the world's population had electricity in 2023 (87% in 2010), but
  *666 million people* still have none, most of them in rural sub-Saharan Africa [1, 2].
- *Clean cooking:* about *2.1 billion people* still cook with polluting fuels; progress is outpaced by
  population growth, and on current trends only 78% will have clean cooking by 2030 [1, 2].
- *Renewables:* only *17.9%* of total final energy consumption came from renewables in 2022 [2].
- *Efficiency:* to still meet target 7.3, energy intensity must now improve by about *4% per year*,
  well above what has been achieved recently [1].

== Main challenges
+ *Unequal access and financing.* The remaining gap is concentrated in poor, rural and fragile regions,
  where grid extension is expensive and investors see high risk.
+ *Efficiency lags behind renewables.* Policy attention and investment go mostly to new generation,
  while demand-side waste (buildings, appliances, industry) improves slowly. In the EU, buildings alone
  account for about 40% of energy consumption and 36% of energy-related greenhouse gas emissions [3].
+ *Intermittency and reliability.* Solar and wind vary over the day and the season, so a higher
  renewable share needs storage, flexible demand and smarter grids.
+ *Lack of measurement.* Many organisations simply do not know where and when they consume energy,
  so waste (lights and heating in empty rooms, devices left on) goes unnoticed.

== Solutions
- *Decentralised renewables* (mini-grids, off-grid solar) to close the access gap quickly and cheaply
  in remote areas [2].
- *Energy efficiency first:* insulation, LED lighting, efficient appliances, heat pumps — the cheapest
  energy is the energy that is not used.
- *Digitalisation and smart buildings:* sensors, meters and controllers that adapt lighting, heating
  and ventilation to real occupancy, and that shift flexible loads to times of high renewable output.
- *Monitoring and transparency:* fine-grained metering and dashboards turn invisible consumption into
  data that people and automated systems can act on.

== Our angle
Our project targets the *efficiency* side of SDG 7 (target 7.3), at the scale we can actually
influence: a university campus. Smart, occupancy-aware control of classroom energy use is a
low-cost, replicable measure that also supports the renewable side, because a smaller and more
predictable demand is easier to cover with on-site solar power.

#sources(
  [UN DESA, _Progress towards Goal 7_ (2025), un.org/en/node/208821],
  [IEA, IRENA, UNSD, World Bank, WHO, _Tracking SDG 7: The Energy Progress Report 2025_],
  [European Commission, _In focus: Energy efficiency in buildings_ (2020)],
  [UN, sdgs.un.org/goals/goal7],
)
