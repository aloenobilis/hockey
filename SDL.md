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


TODO: Team Model <br/>
TODO: Api Prvoider <br/>
TODO: Team Bloc <br/>
TODO: Home Screen lists teams with lazy loading to insert more teams into the list <br/>
TODO: Team detail screen  <br/>
TODO: error handling <br/>
TODO: tests


### inception
DONT: ```flutter create hockey```

