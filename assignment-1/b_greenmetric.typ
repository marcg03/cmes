#import "template.typ": *

#show: page-setup.with(
  title: [UI GreenMetric, Wageningen University & Research, and UBB],
  part: [(b) Green-Metric page],
)

== The UI GreenMetric ranking
UI GreenMetric, launched in 2010 by Universitas Indonesia, was the first world university ranking
dedicated to campus sustainability. The 2025 edition evaluated *1,745 universities from 105 countries*
[1]. Institutions self-report on six weighted criteria:

#table(
  columns: (1fr,) * 6,
  align: center,
  [Setting & Infrastructure], [Energy & Climate Change], [Waste], [Water], [Transportation], [Education & Research],
  [15%], [*21%*], [18%], [10%], [18%], [18%],
)
#v(-0.3em)
Energy & Climate Change is the heaviest criterion; its indicators include *smart building
implementation*, energy-efficient appliances, renewable energy usage and production, *electricity use
per campus inhabitant* and carbon footprint per inhabitant [2].

== Selected university: Wageningen University & Research (WUR), the Netherlands
WUR ranked *1st worldwide in 2025*, and was also best in Europe and best in the Waste and Water
criteria [1].

*Challenges.* WUR is a research-intensive university with energy-hungry laboratories, greenhouses and
animal facilities, where research must never be interrupted by a power cut; renewable supply is
intermittent; and energy must remain affordable [3].

*Solutions.* WUR owns *26 wind turbines* in Lelystad; together with solar panels, its own sustainable
generation exceeded its total energy consumption in 2020 (121%) [4]. It has put about *10,000 solar
panels* on its roofs [4], is connecting campus buildings to *aquifer thermal energy storage (ATES)* with
heat pumps to phase out natural gas [3, 4], and saves energy through insulation, LED lighting and
*optimised building management systems* that automatically adapt installations to conditions [3].

== UBB: where it stands
UBB has been the *best-ranked Romanian university* in GreenMetric for years. It climbed steadily from
340th (2018) to *122nd (2024)*, then fell to *287th of 1,745 in 2025*, while remaining 1st nationally
[5, 6]. Its reports show clear strengths: more than 35% of campus area is covered by forest
vegetation, selective waste collection is an institution-wide policy, and budget students receive 120
free public-transport trips per month [7].

*Challenges identified in the UBB reports* [5, 7]:
- *Energy is the weak spot.* The 2023 report gives no energy, water or waste baselines; solar panels
  were still only at the "identify opportunities" stage; only *2 smart buildings* and 1 green building
  are reported.
- Several measures depend on available funding, and some deadlines (composting, green roofs) slipped.
- The 2025 drop shows that the lead is not secure as more universities enter the ranking.

== Strategies for improvement at UBB
UBB's draft Climate Action Plan already sets ambitious targets: from 2 to *at least 5 smart buildings by
2028*, *motion sensors in at least 50% of common spaces*, per-capita electricity *below 250 kWh* (from
under 279 kWh), at least 500 kW of solar by 2028 and a 5% cut in total energy use [5]. Learning from
WUR, we propose:
+ *Occupancy-aware smart rooms.* Retrofit classrooms with low-cost controllers that switch lighting
  off and heating to an economy setpoint when rooms are empty, coordinated by a central building
  energy manager. This directly scores on the _smart building_ and _electricity per capita_ indicators.
+ *Measure before optimising.* Per-building and per-room metering with a public dashboard, so that
  every target in the action plan has a baseline and a measurable trend.
+ *Rooftop solar plus demand shifting*, scheduling flexible loads when on-site generation is high.
+ *Close the open items* (composting, water-saving fixtures) that keep Waste and Water points low.

Proposal 1 is the starting point for our lab project (see the problem statement).

#sources(
  [UI GreenMetric, _2025 results and award ceremony_, greenmetric.ui.ac.id],
  [UI GreenMetric methodology (criteria and indicators)],
  [WUR, _Energy_, wur.nl],
  [WUR, _From carbon energy… to carbon neutral_, wur.nl],
  [UBB, _Climate Action Plan_ (draft revision), green.ubbcluj.ro],
  [Agerpres, 22 Dec 2025],
  [UBB, _Raport de dezvoltare durabilă 2023_, green.ubbcluj.ro],
)
