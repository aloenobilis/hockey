# hockey

### features
- lists NHL teams with relevant information
- lazy loads teams
- team detail view with additional information
- error handling
- comments
- tests


### clone
```
git clone https://github.com/arxerr/hockey.git
```
```
cd hockey/
```

### run
```
flutter run -d <device_id>
```

### test
```
flutter test
```

### design
```
                                      Hockey App
                                   ──────────────────

        HomeScreen (Team List)                        Team Detail Screen
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

### data architecture
```
                  Data  Architecture

┌───────────────────┐
│                   │
│     ApiProvider   │
│                   │
└─────────┬─────────┘
          │
          │
          │
┌─────────▼─────────┐        ┌─────────────────┐
│                   │        │                 │
│     TeamBloc      ├────────►     Screen      │
│                   │        │                 │
└───────────────────┘        └───────┬─────────┘
                                     │
                                     │
                                     │
                                 ┌───▼─────┐
                                 │         │
                                 │  widget │
                                 │         │
                                 └─────────┘
```

## Software Development Log

### inception
DONE: ```flutter create hockey```

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

### 1.2 - tests
DONE: tested that the Team model can be serialized from json <br/>
DONE: tested the api providers methods  (live api) <br/>
DONE: tested the team bloc methods (live api) <br/>


### 1.3 - readme, linting
DONE: updated readme <br/>
DONE: fix linting issues

### copyright
NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2023. All Rights Reserved.