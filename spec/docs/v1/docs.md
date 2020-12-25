

# Group Projects


## Projects [/projects]


### Get projects [GET /api/projects]


+ Request returns projects
**GET**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjEwLCJ1aWQiOiJmNTkxZmQ5OS0yMjg1LTQzYzQtODJlYi00ZGY3MDI3OTYwMDAiLCJydWlkIjoiODNjZGJmZDktNjM0MS00NWU3LTkyODQtY2Q3MmJjODU5ZGM0In0.q-iOAUbabApUyrm1NApF4VnApJGECiHfjVZmWfXOEU4
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjEwLCJ1aWQiOiI1YjlmMjlhNS0wZjFhLTRmNGQtOGJhNS1kNGQyNTEyMzhmODgiLCJydWlkIjoiY2RkY2NkMDEtYzAwZi00N2YxLWI4MTctMWY5NzM3MDdkMjBmIn0.mc1js4NSxOL5RH6a_v7OUrKnAD537WO5QeXiC-TSSf4

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "project",
                  "attributes": {
                    "id": 1,
                    "name": "A Fistful of Blue Brain",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "2",
                  "type": "project",
                  "attributes": {
                    "id": 2,
                    "name": "War of the Dangerous Wolf",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "3",
                  "type": "project",
                  "attributes": {
                    "id": 3,
                    "name": "Danger Tears",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "4",
                  "type": "project",
                  "attributes": {
                    "id": 4,
                    "name": "Ultra Men",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "5",
                  "type": "project",
                  "attributes": {
                    "id": 5,
                    "name": "Tokyo Tears",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "6",
                  "type": "project",
                  "attributes": {
                    "id": 6,
                    "name": "Blue Cat",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "7",
                  "type": "project",
                  "attributes": {
                    "id": 7,
                    "name": "Case of the Missing Blonde Brains",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "8",
                  "type": "project",
                  "attributes": {
                    "id": 8,
                    "name": "Champagne Wizard",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "9",
                  "type": "project",
                  "attributes": {
                    "id": 9,
                    "name": "Rise of the Flying Cat",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "10",
                  "type": "project",
                  "attributes": {
                    "id": 10,
                    "name": "Dangerous Imp",
                    "user_id": 10
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjExLCJ1aWQiOiJmYWQxNDc5OC0xNTk5LTQwNjYtODRkMi1jMDAyZjA3MTQ0Y2EiLCJydWlkIjoiNzMyM2E5NTYtMzQ3YS00MWZlLTlmY2QtOTJkMmExNjVmODkxIn0.czqzx8-z8TioU8eACODqXj2_M7S6ft3m6ztlJmaA7R8
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjExLCJ1aWQiOiI2MWJjYjUzMi04NWE2LTQ4MTMtYTZlOC1iYjhiNTIyMzAzMWMiLCJydWlkIjoiMjZlNzdiZGYtYjcxMC00MmIxLWIyZWEtN2MwZjQ4NWQyNjY0In0.rXYxodoeoftCVt9T8J52as7MJLXdQlfzoCNRbfLO-AY

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "11",
                  "type": "project",
                  "attributes": {
                    "id": 11,
                    "name": "Planet of the Bloody Fly",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "12",
                  "type": "project",
                  "attributes": {
                    "id": 12,
                    "name": "Blonde Man",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "13",
                  "type": "project",
                  "attributes": {
                    "id": 13,
                    "name": "War of the Death Demon",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "14",
                  "type": "project",
                  "attributes": {
                    "id": 14,
                    "name": "Killer Men",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "15",
                  "type": "project",
                  "attributes": {
                    "id": 15,
                    "name": "Day of the Killer Mutant",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "16",
                  "type": "project",
                  "attributes": {
                    "id": 16,
                    "name": "Tokyo Ninjas",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "17",
                  "type": "project",
                  "attributes": {
                    "id": 17,
                    "name": "Flying Imp",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "18",
                  "type": "project",
                  "attributes": {
                    "id": 18,
                    "name": "Legend of Green Tentacle",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "19",
                  "type": "project",
                  "attributes": {
                    "id": 19,
                    "name": "Curse of the Tokyo Thief",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "project",
                  "attributes": {
                    "id": 20,
                    "name": "Ultra Witch",
                    "user_id": 11
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

+ Request returns status code 401
**GET**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

### Create a project [POST /api/projects]


+ Request creates a project
**POST**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjEzLCJ1aWQiOiI3M2U4OTk0Mi1iMTU3LTQ4NzAtODRhZi01YjJlYWFiZTI2MWEiLCJydWlkIjoiYTM3MDg2YWItZjhiOS00Y2U3LTk1N2MtMWE2OWMwMmFhOTkzIn0.gdc5Qe1KNmKu1JDIT9rpSo__Vw2HC5g0W8YpwVffuvM
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjEzLCJ1aWQiOiI2ZDVmYmYwOC04MGRmLTQ2M2EtOGUxNS1mYTY5MTU2MGVjMzAiLCJydWlkIjoiZjgzMTZkMjAtOTVmNS00MzNkLWJhYTEtNmY4OGUyOWQ1NzNjIn0.tG73PC8QmdOtho_T4OihuVcQq7oGiY-0FuzIuS2znzg
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Learn+Elm&user_id=13

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "41",
                "type": "project",
                "attributes": {
                  "id": 41,
                  "name": "Learn Elm",
                  "user_id": 13
                },
                "relationships": {
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE0LCJ1aWQiOiI3MWVjMzJhNS1iNjU2LTQ1YjMtOWRlOC04MDI5NDk0MGEzYzQiLCJydWlkIjoiODJkMzFmNDMtOTlhYS00YzdmLTk0YTYtMzY3Mjg0YmY1YTFkIn0.v3A7ElS3Izwnghbt4jKco7NXRsdiKnbWJd2RUH--IcU
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE0LCJ1aWQiOiIxMzYzNDdiYi1kNWYwLTRkNTgtYTQyNC1lYjhiMDdiYzk5MTAiLCJydWlkIjoiN2VmNThjNzgtNWZkYy00ODA0LWE0YmUtY2MzY2MwZjFjYTI3In0.z60VsKaQ5rVpzKaPNvPqfmNBf69RYsm-3cIGmhOBStU
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Learn+Elm&user_id=14

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "52",
                "type": "project",
                "attributes": {
                  "id": 52,
                  "name": "Learn Elm",
                  "user_id": 14
                },
                "relationships": {
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request returns status code 401
**POST**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Learn+Elm&user_id=15

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

### Update a project [PUT /api/projects/{id}]

+ Parameters
    + id: `63` (number, required)

+ Request updates the record
**PUT**&nbsp;&nbsp;`/api/projects/63`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE2LCJ1aWQiOiJjODI5ZDM4YS0wMGRlLTRjOWYtYWZjZS05NWZjNTA5NDgxMDYiLCJydWlkIjoiOTFmY2U4ZmYtZDY5MS00NDlmLWIyZjgtODI1NzgwMmI4NjRjIn0.vFd_7cXN_6Z_2pukyLU7SbfyWHGUuTZhVYvkKqmDnuI
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE2LCJ1aWQiOiJiNmMxOTdmNy00ZWNmLTQxYjgtYTQ0NC1iNjY3MTdjMmJjMWYiLCJydWlkIjoiZTMzZjg0MzYtZjViMS00YWQ4LWFmNjctM2Q2MzI0OTg2NGEwIn0.n7GuC8scqtzyKDU_6z9_2E7kHw4qmU1NdEVKVFCNXC8
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 204

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/api/projects/73`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE3LCJ1aWQiOiJkYTU2MzAyMS03NWVjLTQ5YjgtYWJkNi1kNWE5ZDUyODRkZTYiLCJydWlkIjoiMmQ1YmJmMjktMjQxMi00N2ZmLTkwYTItMjI4MzgzNjAwYWVlIn0.XsuZKYbnneukVeIdBQ0hr_jNk3kbH7eD-q-FaFYkTh0
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE3LCJ1aWQiOiIwMTUxOGNlMC0xOTgxLTQxNzItYjE2Zi1lNGIyMGZjZTY0MjMiLCJydWlkIjoiMmM5MTMzODktMWFiMS00YTE5LWE2MTgtMmUxNTljMzE1MzVjIn0.RSTb0xZjjt37FIkFF67ScQSKsOyq4I8od6cFnY7hpe8
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 204

+ Request returns status code 401
**PUT**&nbsp;&nbsp;`/api/projects/83`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/api/projects/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE5LCJ1aWQiOiI1NDM1NWQ2Ny0zMGFiLTQ1M2UtOTY1Yi00ZWUzZGI3ZWRmMWMiLCJydWlkIjoiMDk4OThlMzQtMWFjZC00ZTM2LWI0ODAtODVlMzI4NGVmZDA1In0.WjwO4LxP7hnUgTx9OVyV_-p7eVupoHy6PVLgjk5ahcM
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjMsInVzZXJfaWQiOjE5LCJ1aWQiOiIxZWQ3ODk1MC0yZTY4LTQwNTMtYjM4Zi02ZjdhYzQ3YjAxZGYiLCJydWlkIjoiNjFkZjA1ODUtNzkyMS00ZGJhLWJkNmQtNTU2Mjc0YjY4NzMzIn0.BEVBkKUzq_mfDPjNLKl72vaEFRCreptEjqcwdIwHbJo
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=0 [WHERE \"projects\".\"user_id\" = $1]"
            }

### Delete a project [DELETE /api/projects/{id}]

+ Parameters
    + id: `103` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/projects/103`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjQsInVzZXJfaWQiOjIwLCJ1aWQiOiJmOWI0Yzg2ZS03ODQ3LTQwNDUtYTNiNS00MDhhMWUyOTY3OWIiLCJydWlkIjoiNDM5ZmUwY2ItMWJhNC00MjBkLWJmYWItNmRkNGU4ZDA0ZDUwIn0.-MnbdDpeGJ89lqIIuPTkRFEF71HezBuFEDEalvDPULE
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjQsInVzZXJfaWQiOjIwLCJ1aWQiOiI4ZjRkOTVjYi0xODkzLTQxMGEtOTRhNy01ZDhmN2Y0NWE2NWYiLCJydWlkIjoiNjU5ZWYyMjMtOTM3Yi00ZDU1LTllNTQtMjg3MjRkY2EyZmQwIn0.3LmbX4PTPDlVZ90qZAY_z2NkgwPKKDPHRFQbMew_ibQ
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Project deleted successfully"
            }

+ Request returns status code 401
**DELETE**&nbsp;&nbsp;`/api/projects/113`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 404
**DELETE**&nbsp;&nbsp;`/api/projects/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjQsInVzZXJfaWQiOjIyLCJ1aWQiOiJiN2RjZjBkNS05NmJmLTQxNzMtOWUzMS03MzBiNjE4MDdjM2UiLCJydWlkIjoiNjExZDU0MzctMTY4MC00NDE2LTljNzYtYTJlZDkwODZiNjFkIn0.KG52J-7xlaKjPmRc6OsDECboXvkCCj8krZtZMxosiKw
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjQsInVzZXJfaWQiOjIyLCJ1aWQiOiJlMjYwMzU2OS1lYmU4LTRiMTAtOWQ3My1hODhmY2E5MjA5MzQiLCJydWlkIjoiMGFiZGIwNGUtZTUyMS00OWZhLWIyMmEtMjBiMWY2MzhlNzM5In0.0Kowb2hZLpdfbR-vIH27-J6kmTzvR6356q3D5HTN96g
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=0 [WHERE \"projects\".\"user_id\" = $1]"
            }

# Group Refresh


## Refresh [/refresh]


### Refresh users access [POST /refresh]


+ Request success
**POST**&nbsp;&nbsp;`/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTUxMjEsInVzZXJfaWQiOjEsInVpZCI6Ijc1NTM4OWU4LThiZDQtNDcwZi05NzM4LWM2MmIwOTY1MmEzYyIsInJ1aWQiOiIwZjc1MmU1Yi1iOTgyLTRjYzctOThlYi02NWRhZjRhMWE2MzAifQ.t5-aCuTWsrnxsBBn113coKwzBCNikI8gpPi60JpM3FM
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTUxMjEsInVzZXJfaWQiOjEsInVpZCI6ImExNDYwMDdjLTAzMTYtNDNjNC04YjZmLWQ4OGNhN2FjOGFhMCIsInJ1aWQiOiI5ZjZkN2ZhYS00YWZhLTQxYmYtYTc3Ny02NjJiNDUxZWM3ZDEifQ.z1aSWdEZP3Mwk6oFTpgWvf1ISqx7zU6J-87JQCGI1p0
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "b8cJGnR1H8xIj3qbUj18MGQznHOmfLvHy0q/oNdmo+dc7AxIViECv9kBq4p4AYmEzUb5odYXzF1IyeWxGp6iJw=="
            }

+ Request returns status unauthorized
**POST**&nbsp;&nbsp;`/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjEsInVzZXJfaWQiOjIsInVpZCI6IjFiNjIzNzdiLWM4YmYtNDQzYS1hM2Y2LTRiMWNkNWQwNTAyNSIsInJ1aWQiOiJmNWM0NDgyOC01ZWVhLTQ0MDktYjFiMC0zYWNlYTQ3ZmY1YWUifQ.dehcWaLFPEfoIbaNxJn0zLAlwy106RNwWvoclnOp8nk
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjEsInVzZXJfaWQiOjIsInVpZCI6IjM5ZmVhMTZmLTBkZDQtNGFiMy1hZDJhLWVkM2E1NDUxYjEwNSIsInJ1aWQiOiIyNjIwOTNmNC01MWZiLTQ0ZDMtYTViYi1jYjRhYzczZDMxMWMifQ.6siDh93d79CFu-o-AU2hDETIFe2jIAXsi68YGNfLodQ
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

# Group Signin


## Signin [/signin]


### Signin a user [POST /signin]


+ Request returns http success
**POST**&nbsp;&nbsp;`/signin`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjMsInVpZCI6IjcxZTc4ODI4LTE0MWYtNDUyZS1hYmI2LTk4ZGU2MGYwNjQyYiIsInJ1aWQiOiI1MzQ0NTc0Yi1jZmI1LTQxZWUtOGJmZC1kOGMzMGU0YmIyMGUifQ.BjKQts5klcTtFbanBOCVc4ze8TBwZhCArld0W694Nxg
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40test.test&password=1Password

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "CasSxO1z2QB2WZK7FS+4Mzws2ftFD9u7rhPxoF7aVIiUNpY2ZWk/q+FA0AfXnUtk61VfmPuIT2qAW+bJ4UYshw=="
            }

+ Request returns unauthorized for invalid params
**POST**&nbsp;&nbsp;`/signin`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjQsInVpZCI6ImVhMThjNTU0LTJiMGEtNDRiMS05MDVhLTBmNzIwMTM3MmFjOCIsInJ1aWQiOiI1ZGU5YzdiMC03YmYxLTRmOWYtOTVhOC0xZjNhNTg3ZDEzNWYifQ.TLqk0wckhNUDPvEvhBD2rQlQg4CXw6DZdWJ9NLeQG3M
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40test.test&password=incorrect

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

### Signout a user [DELETE /signin]


+ Request returns unauthorized http status
**DELETE**&nbsp;&nbsp;`/signin`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns http success with valid tokens
**DELETE**&nbsp;&nbsp;`/signin`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjUsInVpZCI6ImYzNzYyNDhhLTFjOGMtNGI5YS05NmFlLWE2ZDFjZjIwZjgxZiIsInJ1aWQiOiIwYjVmNWNjNi1jOTk1LTQ0NjQtODBjNi0wNGEyYWY5MjM3ZWYifQ.zUJk4Ej_T8ujy8KMHzDrjc8DKtUozzEtiSrG50TjAN8
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjUsInVpZCI6IjRkZGNlMGJlLWFhYTktNDA4MC04ZmFlLTUxNzc1ZDc0M2U5OCIsInJ1aWQiOiI4NTEzMmJlZS1iMTdkLTRiN2UtYTNlYS1iZjJhNjVjZGRiYTgifQ.udM3-oVIycLi69_z17ZzozLVdFpl4qbtHC5g3oIzCxo
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

# Group Signup


## Signup [/signup]


### Signup a user [POST /signup]


+ Request returns http success
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=1Password

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "You’re successfully registered!"
            }

+ Request creates a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=1Password

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "You’re successfully registered!"
            }

+ Request returns Unprocessable Entity
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=password&password_confirmation=password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password is wrong. :( Gimme 8 characters with at least 1 upper, 1 lower, and 1 number, alrighty?"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=password&password_confirmation=password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password is wrong. :( Gimme 8 characters with at least 1 upper, 1 lower, and 1 number, alrighty?"
            }

+ Request returns invalid password error
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=password&password_confirmation=password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password is wrong. :( Gimme 8 characters with at least 1 upper, 1 lower, and 1 number, alrighty?"
            }

+ Request returns Unprocessable Entity
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=P1assword

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password confirmation You have a short memory, mate, don'tya?"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=P1assword

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password confirmation You have a short memory, mate, don'tya?"
            }

+ Request returns invalid password_confirmation error
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=P1assword

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Password confirmation You have a short memory, mate, don'tya?"
            }

+ Request returns Unprocessable Entity
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=testemail.com&password=1Password&password_confirmation=1Password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Email format is so wrong, mate. :("
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=testemail.com&password=1Password&password_confirmation=1Password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Email format is so wrong, mate. :("
            }

+ Request returns wrong email format error
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=testemail.com&password=1Password&password_confirmation=1Password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Email format is so wrong, mate. :("
            }

+ Request returns Unprocessable Entity
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjgsInVpZCI6IjAxZGRhODY5LTM5M2MtNDgzYS04MDcyLTE0NWVkY2E4ODE0MCIsInJ1aWQiOiJkNDM2ZTRjMC0zOTVjLTQ2MmEtYjRkZi0xYzA2OTBmMWJhMDkifQ.-IW397VGq0t8fqFSMRq549kKDLYV02KQQ5xX1ZPMiOo
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=1Password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Email is already registered. Please, log in."
            }

+ Request returns email taken error
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTg3MjIsInVzZXJfaWQiOjksInVpZCI6ImVmNjVmZGVlLTk2OWYtNGEzYy1hOWQ0LTllYjY1OTU5N2ZhYyIsInJ1aWQiOiIxNjllN2YzMS00YjU0LTQ0YWQtYjNlYi03MjFhMjRkZjhhMGQifQ.9mDWnV2coa8U7AmuvP3IuJYWw0MIRB0m9GLfko6YYto
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40email.com&password=1Password&password_confirmation=1Password

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": "Email is already registered. Please, log in."
            }
