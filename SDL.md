# Software Development Log

### design
```
                                      Hockey App
                                   ──────────────────


┌────────────────────────────────────┐       ┌─────────────────────────────────┐
│                                    │       │                                 │
│                                    │       │                                 │
│                                    │       │  name: Islanders (NYI)          │
│                                    │       │  conf: Eastern                  │
│                                    │       │  division: Metro                │
│                                    │       │  website: nyislanders.com       │
│                                    │       │  venu: UBS Arena                │
│  ┌─────────────────────────────┐   │       │                                 │
│  │ name: Islanders (NYI)       │   │       │                                 │
│  │ conf: Eastern               │   │       │                                 │
│  │ division: Metro           ──┼───┼───────┼──► team detail view             │
│  │                             │   │       │                                 │
│  └─────────────────────────────┘   │       │                                 │
│                                    │       │                                 │
│  ┌─────────────────────────────┐   │       │                                 │
│  │                             │   │       │                                 │
│  │                             │   │       │                                 │
│  │                             │   │       │                                 │
│  │                             │   │       │                                 │
│  └─────────────────────────────┘   │       │                                 │
│                                    │       │                                 │
│           ─────────────            │       │                                 │
│             ▲                      │       │                                 │
└─────────────┬──────────────────────┘       └─────────────────────────────────┘
              │
              └─── Lazy load on scroll
```


DONE: Team Model <br/>
DONE: Api Prvoider <br/>
DONE: Team Bloc <br/>
DONE: Home Screen lists teams with lazy loading to insert more teams into the list <br/>
TODO: Team detail screen  <br/>
TODO: display all information listed in the spec <br/>
TODO: error handling <br/>
TODO: tests


### inception
DONT: ```flutter create hockey```

### 1.0 - team list screen, bloc, api provider
DONE: created HomeScreen which lists the teams <br/>
DONE: created the ApiProvider which is responsible for fetching data from the nhl endpoint. <br/>
DONE: created the TeamBloc which seperates concerns between getting data from a data provider into local screen state. <br/>
DONE: created Team model <br/>
DONE: created widgets teamList, teamItem, loader <br/>
DONE: added depenedencies
```yaml
  responsive_grid: ^2.4.2         # <-- bootstrap like columns and rows
  dio: ^5.3.2                     # <-- http client requests
```


### 1.1 - team detail screen, bloc, api provider
DONE: TeamDetailScreen for showing a single teams and its information <br/>
DONE: ApiProvider.getTeamById <br/>
DONE: TeamBloc.getTeamById <br/>
DONE: updated Team model with new attrs <br/>
DONE: organised team widgets, created teamDivisionConferenec, teamError, teamFirstYear, teamPadding, teamWebsite <br/>
DONE: created a tile widget which shows the NHL shield logo <br/>
DONE: added dependency 
```yaml 
url_launcher: ^6.1.12           # <--- open link in browser
```

