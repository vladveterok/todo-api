

# Group Comments


## Comments [/comments]


### Get comments [GET /api/projects/{project_id}/tasks/{task_id}/comments]

+ Parameters
    + project_id: `1` (number, required)
    + task_id: `1` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/projects/1/tasks/1/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjEwLCJ1aWQiOiIzNTI2MDQ4ZC1iNjRmLTQzOTEtOGMwMi05OGRiNDc4NzkxNzAiLCJydWlkIjoiMTliYWVkMTQtYzJkNi00MjhjLTgxYTAtMTQwMDJiZWEyMDJiIn0.UTxQ6qTvzbpK7cKm-tuX7PDWqwUgHVkI7aelYfLZ_FA
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjEwLCJ1aWQiOiIwYzU2N2M2MS1jZjAxLTQ3NTctYmI4MS05YjgyN2NlZGY1ZDMiLCJydWlkIjoiYWFiMzk2ZTgtMTk3ZC00Y2U5LTlmMzctNWQxY2YzMjJmODlhIn0.EGmmcDZmC1l5H2x6pdmhqJ9px3DHISlK9VjbcHZUqk4

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "comment",
                  "attributes": {
                    "id": 1,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 1
                  }
                },
                {
                  "id": "2",
                  "type": "comment",
                  "attributes": {
                    "id": 2,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 1
                  }
                },
                {
                  "id": "3",
                  "type": "comment",
                  "attributes": {
                    "id": 3,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 1
                  }
                }
              ]
            }

+ Request returns all project tasks
**GET**&nbsp;&nbsp;`/api/projects/2/tasks/2/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjExLCJ1aWQiOiJmZDhiMWQyMC0yYmMzLTQ5ZDktODExZS0wNjM3MTg4MWI0YzMiLCJydWlkIjoiYzQzMzY0MjctYmM0ZS00NTg2LTg3OTktMDAzMDIxYzc4M2ExIn0.xzboOnsQvUFCYtoCXKGOF4HHA2iITe3WhidSFbycQig
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjExLCJ1aWQiOiI2NmU0Y2I3Yy1hMDVmLTRhNjQtYTM5Zi04YmU4MmMxMzcxYzUiLCJydWlkIjoiZTIxZjhhNzktZjY3YS00NjM4LWFmOGMtZTQ5ZTE1MzczMmU4In0.lvPiSOR76d4PWz1bjffNI0EFqpf-yxk2YaXRhvuOUz4

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "4",
                  "type": "comment",
                  "attributes": {
                    "id": 4,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 2
                  }
                },
                {
                  "id": "5",
                  "type": "comment",
                  "attributes": {
                    "id": 5,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 2
                  }
                },
                {
                  "id": "6",
                  "type": "comment",
                  "attributes": {
                    "id": 6,
                    "text": null,
                    "file": {
                      "url": null
                    },
                    "task_id": 2
                  }
                }
              ]
            }

+ Request returns status code 401
**GET**&nbsp;&nbsp;`/api/projects/3/tasks/3/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 403
**GET**&nbsp;&nbsp;`/api/projects/4/tasks/4/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE0LCJ1aWQiOiIwYjQxZjdiYi05NTdkLTQwNTAtOWUxYi02YWNkY2NiNTNkYzEiLCJydWlkIjoiYTQ3ZTNjYTEtOGQ1Zi00NjEzLWI5M2QtNGIyOGJmYjRmMTIzIn0.dmbq297-UPcamf-ccTEyPdVBPGHi690VoOXgQ17aC-g
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE0LCJ1aWQiOiI5NWNhNmM2Ni1lNGI0LTQ1ZDItYjk1Mi01M2UwMjk1OTFmYmEiLCJydWlkIjoiOWQyNzk5MWYtMzI0OC00YjEyLTkzOTUtOWM1NjUyN2E2NTIyIn0.U71q4rkpk8wPwIx6I8QHQZLhWEo7lKtSGbraDvoCsUc

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/api/projects/5/tasks/0/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE1LCJ1aWQiOiI1NGVkMmYxNi1kOGYxLTQyMmItODYwZC1kNTI2MDUyMjhkZGIiLCJydWlkIjoiNDJhZmNkZWMtMWViNy00ZWZiLTg1MTQtY2UwNmE4OGM0Nzc2In0.cN9f5JX6OhiYm3CRKUXEZctaKl4ae1tbGO0pX60ff24
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE1LCJ1aWQiOiJkZjU2ZmQ0OS01YWIyLTQ5NjgtOTUwNi0xM2MxNTZiZWI2YzkiLCJydWlkIjoiOTNiYWY3OWQtOGFiMC00YmM3LWJiYzAtZjQ5NGQ2YmIyM2IzIn0.vf2n10bzBbANJma-dXWjw2jXOTLuTzLsJ_QIOmEl_OQ

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=0"
            }

### Create a comment [POST /api/projects/{project_id}/tasks/{task_id}/comments]

+ Parameters
    + project_id: `6` (number, required)
    + task_id: `6` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/projects/6/tasks/6/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE2LCJ1aWQiOiI5ODdjNWVmMi04NjhkLTRkNzMtOTNhNC0yMGRiYzdlNDQzMGIiLCJydWlkIjoiMjM5OTIxMmMtODlhMi00ZDA1LTlhNGUtYTgwMThlNTU5NzczIn0.JsBSF7Kwa-PIQGnuAP6VEZCfu7qhNlQLggBNIYGFtT0
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE2LCJ1aWQiOiI1ZmU4M2Q4Ni02MjA1LTQzZWUtYTg2ZS00YjYxMGE0MzE1OWQiLCJydWlkIjoiMjM4M2I0YjItMjAxZi00OWEzLThmM2YtZjJmMDc4M2IxZGM5In0.RpEpG0AIurI2KIC9oLn2ockA8FURiPjbew6WbBpvQ8U
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Visit+Narnia

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "19",
                "type": "comment",
                "attributes": {
                  "id": 19,
                  "text": "Visit Narnia",
                  "file": {
                    "url": null
                  },
                  "task_id": 6
                }
              }
            }

+ Request returns status code 401
**POST**&nbsp;&nbsp;`/api/projects/7/tasks/7/comments`

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

+ Request returns status code 403
**POST**&nbsp;&nbsp;`/api/projects/8/tasks/8/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE5LCJ1aWQiOiJmMDVkYWVkNy0wNzY4LTRkNmItODQxZS1mYTZmNzJhNzE3M2YiLCJydWlkIjoiMzI3ZTc3NDUtMGI0MS00ZmQ4LTk0MGUtMjhiNDZjMGU4NzRjIn0.shpcKhnncjkbWD4VlgfeatL2GFE-v227_rBH2HHVL_A
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjE5LCJ1aWQiOiJlYmRkMzM2OS1mZTg0LTQyMmYtODI1MC1jNTI1MDQ2NzdlMWMiLCJydWlkIjoiYTI2Mjc2M2UtYThkOC00MGU0LTlmYTYtZDlhYTI5ZGIwOWJhIn0.nf0VHy0986JkYc3abGoiRE93a4cd8rEC3S3EIWg7Prk
            Content-Type: application/x-www-form-urlencoded

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**POST**&nbsp;&nbsp;`/api/projects/9/tasks/0/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIwLCJ1aWQiOiIwMmVjOWE3Ni04ZDk3LTQ4ZmYtYTQ5YS02NWUwZTMyM2NjZGMiLCJydWlkIjoiN2UxOGMwYzMtNTRkZS00MWUxLTg4ODQtMTcyZjAzMGE4YTkyIn0.gtIYW5JAC9WZGHe0FJVPPiUx4yEgU7ZnnpecWiKmSNM
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIwLCJ1aWQiOiIzNmM1ZGQ3OS0zZWViLTRiZjktYTQ4Yi03OWI3YWVhNGIzOWEiLCJydWlkIjoiMmRhZWFkY2EtOTZiMS00MWZkLWFhZGYtNTkyMWIyM2RmNWU1In0.X5DzYF6KfS-ZqZyhztjj4Oqhl1Q8RcLx89Hgh4x0tbQ
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=0"
            }

### Update a comment [PUT /api/projects/{project_id}/tasks/{task_id}/comments/{id}]

+ Parameters
    + project_id: `10` (number, required)
    + task_id: `10` (number, required)
    + id: `29` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/api/projects/10/tasks/10/comments/29`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIxLCJ1aWQiOiJlMDIzN2E5Ny00MTRjLTQwNTItYjYzNi1jZjdiNTNhNDM1MjgiLCJydWlkIjoiMWY2Zjk5MjItYjAzNy00ZTNhLWI2ZWQtMWQyYjAwY2M5YTY0In0.odBJ818F7OnGLnx1UdQ3oMRzZH4iyxiUBpXbxJc-gO4
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIxLCJ1aWQiOiJiNDE3Yzg4Mi02ZWE4LTRmZTMtOTI1OS04Y2M3OGVlMmE0ZTMiLCJydWlkIjoiYjJlNmFlOWUtZDdlZC00ZjMyLTkyZTMtYzhhMzRjYzI4NzgxIn0.IIPcqfmsxLpwhp-OwFcMPWbNnGY7dXCfdU9NwUhPSg4
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Mozart%2C+where+are+your+panties%3F

+ Response 204

+ Request updates the comment
**PUT**&nbsp;&nbsp;`/api/projects/11/tasks/11/comments/32`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIyLCJ1aWQiOiIwY2Q0NDRkZC0zMjA1LTQzYjAtYTI3Ni0wNDAxY2YxZDdkMzkiLCJydWlkIjoiZThlMDAwYTMtOTY5YS00NjcyLWIzMWQtNTM5YWQ5Y2Y2YTkxIn0.3lzOuev0_rkGVVCwOp8UiIiNPFPHjQ3N0bf4q-ccl6o
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDUsInVzZXJfaWQiOjIyLCJ1aWQiOiJlMTQ5ODgzOC0xOWNlLTRlZjYtOTJkNS1iZDc5ZGVlMDc3ZGYiLCJydWlkIjoiNTNkYzdlMzctNGVjNC00MGFhLWFlMjUtYjMxZTY3N2VlODM0In0.mQ9r2qa3LBo_3L46l6RyggI_2phfIA8R-3vP9ZUy8t0
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Mozart%2C+where+are+your+panties%3F

+ Response 204

+ Request returns status code 401
**PUT**&nbsp;&nbsp;`/api/projects/12/tasks/12/comments/35`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Mozart%2C+where+are+your+panties%3F

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 403
**PUT**&nbsp;&nbsp;`/api/projects/13/tasks/13/comments/38`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI1LCJ1aWQiOiJiZjdiMWUwMi00YmZlLTRhYzItYThhOS0zYjVmNzYyNGUwYmQiLCJydWlkIjoiMGU5MTU0NWYtOTZjZC00MzhmLTgwZTAtY2E5YzM0MWJiYjg2In0.UAvRP0jAje81Q2ARpXsRW296pOFgOx4cl4Bip3alOHs
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI1LCJ1aWQiOiI0YWZiMjZjNS02ODhlLTQyYWYtYmM0YS04NzJkNWYwMDQyODciLCJydWlkIjoiMTMwN2YzOGItNGJiYS00NTFjLTk1YTctMTUyZmFmMjkyNGU3In0.lFxIOyGgi0nmqtk1laVM123LxJwebwmyQgPh1roqcHQ
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Mozart%2C+where+are+your+panties%3F

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/api/projects/14/tasks/14/comments/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI2LCJ1aWQiOiJjZjY3YzhmMS00NDQ1LTQxYTctODViNC02MThmZDkwMDhkMTkiLCJydWlkIjoiN2ZmY2U0ODItZTgyZS00NDNjLWEwZDctNjQ3ZWU2YjRiNDcwIn0.TzPH2ASs6lj_9FKxCMhwxp6c2uExIGup0GP59GOo0fc
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI2LCJ1aWQiOiIxNDNkNjgyNS00ZDJmLTRjY2QtYjY2My1mNGZkODBjNjBlNDQiLCJydWlkIjoiNmFmMGYzMmUtYzIxNC00NjVmLWJiNmQtZDdkNjA4ZDMwZDQ0In0.DLY9rNgk9kZYBuIFtHx-nRH0q9u0NSRiURBh4qs6b2g
            Content-Type: application/x-www-form-urlencoded

    + Body

            text=Mozart%2C+where+are+your+panties%3F

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Comment with 'id'=0 [WHERE \"comments\".\"task_id\" = $1]"
            }

### Delete a comment [DELETE /api/projects/{project_id}/tasks/{task_id}/comments/{id}]

+ Parameters
    + project_id: `15` (number, required)
    + task_id: `15` (number, required)
    + id: `44` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/projects/15/tasks/15/comments/44`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI3LCJ1aWQiOiIxYmY0ZTgwNC1mOTgxLTRjNGItYTc2YS0wMmI4ZDM0ZjYxYmQiLCJydWlkIjoiNTcwNjkzODEtMDUyNS00NTdjLWFmYjEtNTkwOGEwODA4YTQ2In0.tBBI-druH-CjZ4opQCtOHcwdSIv3OCmNZiwFa_w7weg
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjI3LCJ1aWQiOiIyYjZkNWVhZi1mM2Q5LTQxYTgtYWM4OS1iZDFjYTUxMjQ2ZjkiLCJydWlkIjoiOGRmMzcwYTktMGMxZi00MTFlLTgwZjctYzkzMzQzNmI1MWE0In0.PM5V9BZOjCl0Pzfs8qoL_Noi8kXEwwDerviAraTh_i4
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request returns status code 401
**DELETE**&nbsp;&nbsp;`/api/projects/16/tasks/16/comments/47`

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

+ Request returns status code 403
**DELETE**&nbsp;&nbsp;`/api/projects/17/tasks/17/comments/50`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMwLCJ1aWQiOiJkNWM5MTllMy02M2QzLTRkOGQtOGQwMS0yYWFjN2RmZTcwM2MiLCJydWlkIjoiODk0NjUyZWItY2ZmZC00ODg0LWE5NWItMTI4MTk2ODRiZjZiIn0.n9uyN-bBXVwNWaIYvTbFj5C3bVvU2uK9BYoBwhbxbco
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMwLCJ1aWQiOiJlZTBhMjlhNC0wZjY0LTRjM2EtYWFiMC00YmRjMjZmMjJhNjUiLCJydWlkIjoiM2VmZTBlYWYtNTljMC00NDRhLWFlMDgtY2FhMTdkNzQwMmVlIn0.apMUJ29C4T_PfSKIjoVbgrywyIlqv-fo2e68GMUGyyI
            Content-Type: application/x-www-form-urlencoded

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**DELETE**&nbsp;&nbsp;`/api/projects/18/tasks/18/comments/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMxLCJ1aWQiOiJkN2ViODBkMS1lODBiLTQwZjYtOTU3Mi0yZmVkNGRiZWFiOTUiLCJydWlkIjoiMTViYTU0MDctMGM0ZS00NDU5LWJkMTYtOWNlYjE4YjgyNzk5In0.eNbrx_cG7tfjzZxQevD1Eoi_mhvv2owm5Mfahhij4-Y
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMxLCJ1aWQiOiJiZmQ2YzA2Zi0xMWYzLTQ3ZDAtOTg5NC1iOTY1ZWQ5NWE3ZjciLCJydWlkIjoiNDNkZWFhZjAtZmNmZC00MTYzLThlNjUtZGNlN2UxZGRlMTViIn0.2C_zlf_J64qtP6z6v_10mp5AYYzIlm7EJv1uPYUDkS4
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Comment with 'id'=0 [WHERE \"comments\".\"task_id\" = $1]"
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/projects]


+ Request returns projects
**GET**&nbsp;&nbsp;`/api/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMyLCJ1aWQiOiJjYTM4OWQ4Ny0wNjljLTQ0YjEtYjlmZi01YzNmYmVhZDMxYzMiLCJydWlkIjoiN2ZkMjk2ZDQtYmQ2OC00NGNhLTg2OWYtY2YwZTI2NjU2ZjVlIn0.AMgm5GXvNsoDt9i-crT-ODM6OXrVE6XCCFD3tyAcwd0
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMyLCJ1aWQiOiIxYzU5N2QzNi0zMDRkLTQzNGQtYjgxMC1iYWYwZTA4YTU3NTEiLCJydWlkIjoiOGQ2NGY5N2QtMGUzMi00ZWY3LTk0YTAtMzZjNzM4M2ZjZmZmIn0.bYZx7-SeWn2hRZkt3201c6kcrV-RznZpnDWWvL8mUUA

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "19",
                  "type": "project",
                  "attributes": {
                    "id": 19,
                    "name": "Action City",
                    "user_id": 32
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
                    "name": "The Green Women",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "project",
                  "attributes": {
                    "id": 21,
                    "name": "Killer Jungle",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "project",
                  "attributes": {
                    "id": 22,
                    "name": "Journey of the Blonde Fly",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "project",
                  "attributes": {
                    "id": 23,
                    "name": "Invasion of the Ultra Diaries",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "project",
                  "attributes": {
                    "id": 24,
                    "name": "Time of the Flying Ninja",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "project",
                  "attributes": {
                    "id": 25,
                    "name": "Blonde Brains",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "project",
                  "attributes": {
                    "id": 26,
                    "name": "Action Mutant",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "project",
                  "attributes": {
                    "id": 27,
                    "name": "Journey of the Danger Ninja",
                    "user_id": 32
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "project",
                  "attributes": {
                    "id": 28,
                    "name": "I am Bloody Woman",
                    "user_id": 32
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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMzLCJ1aWQiOiI3ODkxNGE3Ni1iZTkzLTQxNDQtODI4Ni1jYjBkZjU4ZGZkNTEiLCJydWlkIjoiMDkzNjdkY2QtNmY0Ni00OGE4LTk5ODAtOThjZDc0ZTM0MmYwIn0.d7aY9A_DQNiZOSorArEpwxtMKOpb2Hrk1eB5vJvYW78
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjMzLCJ1aWQiOiIzYzFiYjE1My02YzE4LTRhMGEtYWZiYi0wZTNhYmFlOGQxYmIiLCJydWlkIjoiYjRiMzJiYTQtZDdlNC00NGNmLTlkZTgtM2YyNDFlOWMyYTc1In0.d8npFEir-gTUZaDGjucG0E7tcRSt6bXPM31nCDrNfTQ

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "29",
                  "type": "project",
                  "attributes": {
                    "id": 29,
                    "name": "Death City",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "project",
                  "attributes": {
                    "id": 30,
                    "name": "Invasion of the Killer Demon",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "31",
                  "type": "project",
                  "attributes": {
                    "id": 31,
                    "name": "Season of the Electric Tears",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "32",
                  "type": "project",
                  "attributes": {
                    "id": 32,
                    "name": "Time of the Bloody Mutant",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "33",
                  "type": "project",
                  "attributes": {
                    "id": 33,
                    "name": "The Forbidden Monster",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "34",
                  "type": "project",
                  "attributes": {
                    "id": 34,
                    "name": "Danger Rain",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "35",
                  "type": "project",
                  "attributes": {
                    "id": 35,
                    "name": "The Forbidden Witch",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "36",
                  "type": "project",
                  "attributes": {
                    "id": 36,
                    "name": "Action Wolf",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "37",
                  "type": "project",
                  "attributes": {
                    "id": 37,
                    "name": "I Married a Electric Imp",
                    "user_id": 33
                  },
                  "relationships": {
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "38",
                  "type": "project",
                  "attributes": {
                    "id": 38,
                    "name": "Case of the Missing Ultra Demon",
                    "user_id": 33
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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjM1LCJ1aWQiOiJkYmRkMGI0Mi0zZjQxLTRlYTUtOTkyZC0xY2M1NjU1OTQ4ZDEiLCJydWlkIjoiNjFiMjM4YzAtYTU3OS00NzlmLTkxMDctM2QzNTg3ZjE0MTI0In0.3eJouRL81UuRg0nbru4SA5xm1BeYeuUdEzTm1Bze4_Q
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjM1LCJ1aWQiOiI1OTM4NWFkZS0xNTFlLTQ4N2MtODYwNi01OTc0NGViMDFlODQiLCJydWlkIjoiMWMzMjhkM2ItNDc5Zi00NzZhLTk3MTYtOWVhMmQzYmJjOTY5In0.XRhKSF-I8nEv3-kPpOd60wpRGFI3Fzgh1cZyZWFgt0E
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Learn+Elm&user_id=35

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "59",
                "type": "project",
                "attributes": {
                  "id": 59,
                  "name": "Learn Elm",
                  "user_id": 35
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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjM2LCJ1aWQiOiIwZTk4MjMwNC1hM2M2LTQ1NGUtOWQ4MS03NjBhOWMzMGY5M2QiLCJydWlkIjoiNTI2ZDVhODktNzQwYy00ZDRhLTg3NjYtYzgwNTc5NmFjN2I2In0.n74CmEb6uVR3UHSrloQC1XidLEmMJNKvBqcxE_8Twmw
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDYsInVzZXJfaWQiOjM2LCJ1aWQiOiI4ZDc1ZjI4Ny03MTZjLTQ1NzgtYWE2OS1hMTJjZTllMDEwODEiLCJydWlkIjoiOThjNDY3ZGQtYTk4YS00MzllLWE0YzAtYWI5NGIwOTNlMmFlIn0.b16yFbPw_I_WHd_IJJ8mHVsNIq91RTVA5pnvLoTr94Q
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Learn+Elm&user_id=36

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "70",
                "type": "project",
                "attributes": {
                  "id": 70,
                  "name": "Learn Elm",
                  "user_id": 36
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

            name=Learn+Elm&user_id=37

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

### Update a project [PUT /api/projects/{id}]

+ Parameters
    + id: `81` (number, required)

+ Request updates the record
**PUT**&nbsp;&nbsp;`/api/projects/81`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjM4LCJ1aWQiOiI1MGIyYTlkZS1hZGJmLTQ0MjMtYTc0ZS0xYTIyOGY2YTFiMzYiLCJydWlkIjoiNDRjMjRmOTctNmI0MC00OGFmLWJhNzAtMmU4M2EzMTYyNzBkIn0.-8PAqLet4eDDMgTgU901x8akAJ8KTGYAqZ_t1_RNSPs
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjM4LCJ1aWQiOiI3ZTY5OTUzZS00NzY4LTRhODktOGQ0Mi01ODk1MTNiYzVjYmQiLCJydWlkIjoiZDBiZjdjM2QtODQ4NS00ZjY0LWI0ZGUtZmU3ZjZlYWZjYWJjIn0.Z9UAXkNh-YXOeIxwDleYT-LOV-J-5RbnJVXZlBtf_l0
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 204

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/api/projects/91`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjM5LCJ1aWQiOiI0NjYyOTQ3Ny00MTQwLTQ1OTYtYWNmYi1lNjg4NThlM2JjMGMiLCJydWlkIjoiMjg5YWE3YjMtYTkyOC00NDlkLTljYjYtMzc2MmEwZmZlYTIwIn0.f4T9NcAw4WzFZWKS_pUkVl2YcksZTr01Zwy76-LIksU
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjM5LCJ1aWQiOiI4YmNlYTQ5Zi1mOGE0LTRlNDQtYTc0Ny01OGVlNDg2ZTgxODciLCJydWlkIjoiNjVhYzI5ZTYtNzA1Yy00NjdmLWE2OWEtNTZhYTg3ZWNlZGJjIn0.EkZmfIfjvrZuz5_WdKp3-B78h5s5Px55kJQ9rXfQ9F0
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Shopping

+ Response 204

+ Request returns status code 401
**PUT**&nbsp;&nbsp;`/api/projects/101`

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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQxLCJ1aWQiOiIyNmNlZWRhNy00NDNjLTQyNGYtYTQ2My00NGQ0NDdmNTA1NDAiLCJydWlkIjoiODA5MGQ3NGMtZWYxMC00MDU3LWJmODktNDM4ZDE0YjI0YmZjIn0.VT8CTtPueo42YQcdil1pw1LBe_4gV3hUaebnC2HkfWQ
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQxLCJ1aWQiOiI4Y2Y2NzU1NC0zZDY4LTRiYTItYjAyZC01MDdjOTg1YTIxNGYiLCJydWlkIjoiMDkzZjNjYzQtN2I1ZS00ZDdiLTk1MzYtYWE3OGJiNGMwZjZmIn0.yczgvfVgkcb9GM-Jy1stkfe-KQ1lVBO7YKN9OMkXMWQ
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
    + id: `121` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/projects/121`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQyLCJ1aWQiOiJhNmRkNzNkNy0yY2EwLTRkZDUtODIwMC0xOWQwMzRkZDM1ZjEiLCJydWlkIjoiNjQ5ZDFkYzItNjJhMS00NzQ5LWJmNTEtYjViYjZiNTBjZDQ5In0.0CCiyJuB043ksl-YPdiDCDZ9Sp8ymgTLJwvKHSGdUWU
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQyLCJ1aWQiOiJlMTBlNTNiZC00OGI4LTRhYWUtYTBhOC1kMzdhNTNiYmYwYTgiLCJydWlkIjoiZWYxNzk4OGUtYzc4Zi00ZTNmLTk3ODktOTkxODAzOTRiZWQ5In0.v-kxDbOh4v60DBaQqS_rigqDTtI1ZFzFE63MCZlf1WQ
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Project deleted successfully"
            }

+ Request returns status code 401
**DELETE**&nbsp;&nbsp;`/api/projects/131`

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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQ0LCJ1aWQiOiJiYTlhN2Y3My05MGMzLTQwYjYtOGEwZC1jNjhlMWEzZGFmZmQiLCJydWlkIjoiZjczMDViNmUtNGYwYi00Y2QzLWJmOWUtMmExOWQ4Mzk5MDIyIn0.S3gfo8iDjBPsfSzBIa6mx7UUD0sK18BLgrNxDKvQ484
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQ0LCJ1aWQiOiJjOGNjNjg0Zi1hMDMyLTRhYzQtOWNlOC04NTc3NjE4MzBmN2QiLCJydWlkIjoiY2MxZTU2MWUtYTk1NC00YjkyLTkyYTYtNDM0NjhmY2M3ZDZmIn0.IOFSaZb-Y46GVEIRJbSQtsNk503zLSpA37tEkeSEWOg
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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTYzMDMsInVzZXJfaWQiOjEsInVpZCI6IjNhZDZmMjRiLTE3OGUtNGMyNy1hZDc0LWFiMzIwYTkyODYwNiIsInJ1aWQiOiIxNDY0MjllNy0yMzg1LTQ3NzctYmNjMS00YjQ0NGY1YzQ1NzQifQ.H-L453wLcMANmE8M9Nv5EruVz2gwo9STW8smOdv3s68
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTYzMDMsInVzZXJfaWQiOjEsInVpZCI6ImU4MDg5Y2Y2LWVjMjQtNGJkNC1iMTU5LWM4NGRmMjgxZWI2ZiIsInJ1aWQiOiJjNDMxOWVmNC03ODdiLTRmMjMtODQxYi1iOTY0M2FmMjA3NGQifQ.dwYoYPF7zVbhJVGOkPLJhjJ2F20yWjBTGH0RiUBVKy8
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "RBpjXAIfyCI6KQ/kF+zz+5COot2fQp5Ibyw6HtQnGE0JNC3Mk5phlrRWLTFszYYY4IsBAU7qIqVZdcFbQAKlfg=="
            }

+ Request returns status unauthorized
**POST**&nbsp;&nbsp;`/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDMsInVzZXJfaWQiOjIsInVpZCI6ImJjNjM4NzM3LTE1ZWEtNDk3Mi1hZDU0LTlhZTdhYjgxZTM5OCIsInJ1aWQiOiJjNTdkMzAyZi04Yzc0LTQwNDktOWNlYi0zOTA4ZjA2NzQ0YWQifQ.eraFP07aRAwJVs1EjVaXbuhJEWhv-9jaEkRbEnQveXc
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDMsInVzZXJfaWQiOjIsInVpZCI6ImNjMzY3MjFmLTUyZDMtNDhlZi05MDA3LTczYmNkZGEyMjZmYiIsInJ1aWQiOiI0YThlMTJkMS1hMTRhLTRhODAtODMyNC03Yzk1NTNhYjEwOTcifQ.WRLdO16S2Abm7szZ1udO63XkIutptGNHQ7nMo2h0KoM
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
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjMsInVpZCI6IjM2YmY4MjY3LTlmYzUtNDgwZi05M2UxLTNiNTJhZDIzMThlZSIsInJ1aWQiOiJiZWMxYWEyZS02ZTc1LTRmNjktYmRiMS01YmZkMjJjMmVjM2UifQ.-24a7jjUfYiQwOKZGU0rEtMGuH1wU4yPtu9ZmnZ32wQ
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=test%40test.test&password=1Password

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "CFyPpbyoORXPVNz1VhT6KsgrrDNF5Y6+XoKvrD5AfsiiCh2A59z5gUqiQIfZERwvej74aq/74KQat/Zc5pXOzg=="
            }

+ Request returns unauthorized for invalid params
**POST**&nbsp;&nbsp;`/signin`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjQsInVpZCI6IjY0YzcyOTI2LWY0NDgtNGQwNy1iYmEwLTJiMDE2ZDNhNjgyMCIsInJ1aWQiOiI3Nzc2OGY4Yi0yNmE1LTRkNDYtYTZhZi1jOTUzZjI2ZmU4ZTYifQ.gZ2ofp69CfbnJFKkHvg7iEV2upWUJD7JGo_H_Dijtl0
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
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjUsInVpZCI6IjA4YWE4MTJiLThmY2QtNGNlMy05YjQwLWFiYmRiN2JiYTBlZCIsInJ1aWQiOiI3NGVlYTYzNC04MTU2LTQ3ZTYtYWI4Yy03YzU5Y2VlNzkxZGMifQ.UF9I9cnx-9UZzDEJAPudj78e6F2OrncBBvRDt4b9eOU
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjUsInVpZCI6IjVhYWM2NDRjLWE0YWQtNDgxNS05NmIzLTU2ZDZmMjgzMDEzNSIsInJ1aWQiOiJmNDg4NzAzNS1lMTkyLTQ4YTMtODYwNi1iNTBmYjIzM2YzNTQifQ.0cUp-60s_Y3DNDa095SiZFZq-tEz1CZtmLJBwWmiJZw
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
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjgsInVpZCI6IjM3NTg1OGZiLTAzN2QtNDYwYS04MzE4LWIwYjYxYjQ3MWNhNiIsInJ1aWQiOiI3ZWM0MTYwYi1mOTAwLTQ1YmMtYWMxZi1iNzhhN2QzMDY2MDQifQ.Dr-rBf9xXhyasJ13EgdQz2u6RJsAxLQU2yZjPv20jHA
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
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDQsInVzZXJfaWQiOjksInVpZCI6IjQ3NWY3NmNmLWUxNmItNGEwNC05OGZkLTJhYjhjYmU3NWM3NSIsInJ1aWQiOiI4NTliYzI1NS02N2Q3LTRkZmMtODU3Ny00NTM2YTY2MzhlODcifQ.3uL_1tZtGm3oUtq9PIQhrKuORkY3ryx_TVGJ4KdEs0g
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

# Group Tasks


## Tasks [/tasks]


### Get tasks [GET /api/projects/{project_id}/tasks]

+ Parameters
    + project_id: `151` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/projects/151/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQ1LCJ1aWQiOiJkYTgyYTZmZi1hYTA5LTRjZTItYTRiMC1kNjEwM2E3Njk1MGEiLCJydWlkIjoiM2NhYTQ4ODktYjVmNy00YTA3LTgxOTQtNDAyMDIzYWU3OGZmIn0.YQjBvRJW8bo_kEVoSkzR_wHJAyuY9f5V3MdetsESQUk
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDcsInVzZXJfaWQiOjQ1LCJ1aWQiOiI5MmZkMDE1Yi1hZTEzLTQ4NzktODllYS1hNGRmOWU0NmU3YTkiLCJydWlkIjoiZGUwOTc1NmUtMjE4OS00M2U5LWE0ODYtODI5Y2YxY2YwMTliIn0.ZYUp3o_MkTxr-17-PpPJMwP3GTDRnBD_AgYIxLip3ug

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "19",
                  "type": "task",
                  "attributes": {
                    "id": 19,
                    "name": "Red Ninjas",
                    "position": 1,
                    "deadline": "2018-06-21T00:24:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "task",
                  "attributes": {
                    "id": 20,
                    "name": "Nuclear Blow",
                    "position": 2,
                    "deadline": "2016-10-06T06:32:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "task",
                  "attributes": {
                    "id": 21,
                    "name": "Tokyo Brains",
                    "position": 3,
                    "deadline": "2020-02-02T08:41:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "task",
                  "attributes": {
                    "id": 22,
                    "name": "Green Rain",
                    "position": 4,
                    "deadline": "2020-08-21T14:46:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "task",
                  "attributes": {
                    "id": 23,
                    "name": "Blue Cousins",
                    "position": 5,
                    "deadline": "2020-09-19T16:09:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "task",
                  "attributes": {
                    "id": 24,
                    "name": "Green Men",
                    "position": 6,
                    "deadline": "2020-10-17T22:12:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "task",
                  "attributes": {
                    "id": 25,
                    "name": "American Blow",
                    "position": 7,
                    "deadline": "2016-08-20T03:35:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "task",
                  "attributes": {
                    "id": 26,
                    "name": "War of the Red Ninja",
                    "position": 8,
                    "deadline": "2020-02-10T09:21:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "task",
                  "attributes": {
                    "id": 27,
                    "name": "Case of the Missing Forbidden Rain",
                    "position": 9,
                    "deadline": "2019-04-29T20:35:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "task",
                  "attributes": {
                    "id": 28,
                    "name": "Case of the Missing Blue Fly",
                    "position": 10,
                    "deadline": "2019-02-02T04:30:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "29",
                  "type": "task",
                  "attributes": {
                    "id": 29,
                    "name": "A Fistful of Tokyo Ninjas",
                    "position": 11,
                    "deadline": "2019-01-15T16:33:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "task",
                  "attributes": {
                    "id": 30,
                    "name": "Death Mutant",
                    "position": 12,
                    "deadline": "2017-10-10T20:55:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "31",
                  "type": "task",
                  "attributes": {
                    "id": 31,
                    "name": "Dangerous World",
                    "position": 13,
                    "deadline": "2016-02-02T05:54:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "32",
                  "type": "task",
                  "attributes": {
                    "id": 32,
                    "name": "Invasion of the Tokyo Wizard",
                    "position": 14,
                    "deadline": "2018-08-21T14:50:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "33",
                  "type": "task",
                  "attributes": {
                    "id": 33,
                    "name": "Journey of the Death City",
                    "position": 15,
                    "deadline": "2017-10-06T11:48:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "34",
                  "type": "task",
                  "attributes": {
                    "id": 34,
                    "name": "Case of the Missing Ultra Brain",
                    "position": 16,
                    "deadline": "2017-03-06T22:14:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "35",
                  "type": "task",
                  "attributes": {
                    "id": 35,
                    "name": "Red Women",
                    "position": 17,
                    "deadline": "2017-07-21T23:36:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "36",
                  "type": "task",
                  "attributes": {
                    "id": 36,
                    "name": "Day of the Tokyo Beast",
                    "position": 18,
                    "deadline": "2019-07-30T06:41:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "37",
                  "type": "task",
                  "attributes": {
                    "id": 37,
                    "name": "Bloody Man",
                    "position": 19,
                    "deadline": "2016-11-13T10:05:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "38",
                  "type": "task",
                  "attributes": {
                    "id": 38,
                    "name": "Season of the Blue Woman",
                    "position": 20,
                    "deadline": "2017-10-19T02:43:00.000Z",
                    "done": false,
                    "project_id": 151
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

+ Request returns all project tasks
**GET**&nbsp;&nbsp;`/api/projects/152/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjQ2LCJ1aWQiOiJmM2E0NDhjZC04ZGU5LTQ2ZjctYTQ0MS0zZTdhZjc5ZTkzOTAiLCJydWlkIjoiM2ExMDJjZjEtMzMxYS00NzM4LWI0YzUtNjg3ZGU2MjVlODM1In0.MHO3tuf3unbzshVTJfzSsDgXXnKWrYl7benrm3Bx3v0
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjQ2LCJ1aWQiOiI0YjAwNzAyMi0zYTU3LTQyOGUtOTBlNy1mMDExNDk0MjY1Y2EiLCJydWlkIjoiNjE2YTcyZjEtMGZlMC00ZWE0LWE3MjctMTU4NDRjMzI1ODlhIn0.P4UeFKKOmq9_y10pp4Taw10Xw6dYKdUmdGxnbrBCEes

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "39",
                  "type": "task",
                  "attributes": {
                    "id": 39,
                    "name": "I Married a Bloody Wizard",
                    "position": 1,
                    "deadline": "2019-11-07T19:19:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "40",
                  "type": "task",
                  "attributes": {
                    "id": 40,
                    "name": "Return of the Action Ninjas",
                    "position": 2,
                    "deadline": "2020-06-15T12:12:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "41",
                  "type": "task",
                  "attributes": {
                    "id": 41,
                    "name": "Day of the Forbidden Hills",
                    "position": 3,
                    "deadline": "2017-02-01T23:58:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "42",
                  "type": "task",
                  "attributes": {
                    "id": 42,
                    "name": "The Danger Thief",
                    "position": 4,
                    "deadline": "2019-11-29T22:43:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "43",
                  "type": "task",
                  "attributes": {
                    "id": 43,
                    "name": "Journey of the Green Hills",
                    "position": 5,
                    "deadline": "2017-08-25T13:37:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "44",
                  "type": "task",
                  "attributes": {
                    "id": 44,
                    "name": "Champagne Tears",
                    "position": 6,
                    "deadline": "2016-06-29T20:41:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "45",
                  "type": "task",
                  "attributes": {
                    "id": 45,
                    "name": "Bloody Brain",
                    "position": 7,
                    "deadline": "2018-02-15T11:48:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "46",
                  "type": "task",
                  "attributes": {
                    "id": 46,
                    "name": "Flying Ninjas",
                    "position": 8,
                    "deadline": "2018-08-06T01:39:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "47",
                  "type": "task",
                  "attributes": {
                    "id": 47,
                    "name": "Tokyo Men",
                    "position": 9,
                    "deadline": "2017-11-04T19:33:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "48",
                  "type": "task",
                  "attributes": {
                    "id": 48,
                    "name": "Rise of the Fake Wolves",
                    "position": 10,
                    "deadline": "2017-10-16T12:33:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "49",
                  "type": "task",
                  "attributes": {
                    "id": 49,
                    "name": "Killer World",
                    "position": 11,
                    "deadline": "2018-01-04T06:37:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "50",
                  "type": "task",
                  "attributes": {
                    "id": 50,
                    "name": "Invasion of the Dangerous Friday",
                    "position": 12,
                    "deadline": "2018-12-10T22:31:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "51",
                  "type": "task",
                  "attributes": {
                    "id": 51,
                    "name": "A Fistful of Ultra Imp",
                    "position": 13,
                    "deadline": "2019-09-24T20:01:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "52",
                  "type": "task",
                  "attributes": {
                    "id": 52,
                    "name": "Electric City",
                    "position": 14,
                    "deadline": "2020-11-08T13:21:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "53",
                  "type": "task",
                  "attributes": {
                    "id": 53,
                    "name": "American Ninja",
                    "position": 15,
                    "deadline": "2018-04-26T14:42:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "54",
                  "type": "task",
                  "attributes": {
                    "id": 54,
                    "name": "Case of the Missing Bloody Wolves",
                    "position": 16,
                    "deadline": "2017-10-25T09:22:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "55",
                  "type": "task",
                  "attributes": {
                    "id": 55,
                    "name": "Time of the Forbidden City",
                    "position": 17,
                    "deadline": "2019-06-06T20:16:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "56",
                  "type": "task",
                  "attributes": {
                    "id": 56,
                    "name": "Dangerous Friday",
                    "position": 18,
                    "deadline": "2018-07-21T02:36:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "57",
                  "type": "task",
                  "attributes": {
                    "id": 57,
                    "name": "Season of the Dangerous Diaries",
                    "position": 19,
                    "deadline": "2019-02-06T21:00:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "58",
                  "type": "task",
                  "attributes": {
                    "id": 58,
                    "name": "Action Ninjas",
                    "position": 20,
                    "deadline": "2019-10-18T04:01:00.000Z",
                    "done": false,
                    "project_id": 152
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

+ Request returns status code 401
**GET**&nbsp;&nbsp;`/api/projects/153/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 403
**GET**&nbsp;&nbsp;`/api/projects/154/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjQ5LCJ1aWQiOiIyZDRkZWQ3Yi04MzIyLTQzZGEtODgzYi0zNGVkNTA3MDdjN2EiLCJydWlkIjoiNzNmNzVmMTgtMWVkMS00OGNkLWE3ZGQtNDVjNTQ1N2I3MGZmIn0.cHRW3Xqd0VBbxNscOk742WDLzu6vSPfaWrSB4mSIbms
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjQ5LCJ1aWQiOiJkMTQ1YTQ3YS1jZjY5LTQxYTAtOWYyNy1mM2U3NzY3ZTA0Y2EiLCJydWlkIjoiMWUyZTA1MTQtNTMyMS00MjIzLTlkMDctNzQzMGNlNmI5MTZmIn0.4dz5_qqjfcV6bmMXoPnclCu0J7cw1iCdkMHNzQCkiFc

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/api/projects/0/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjUwLCJ1aWQiOiJhZDYyMWQ0Mi04ZThlLTQxZjAtOTFiNi1iY2RlZjJjODdjZDQiLCJydWlkIjoiZDRlY2YxYWItOTA0NS00YzVkLTg1YTItZDUwYTU3MzdiODM2In0.TwduGm6CtBMbsSzw4xy-HUdgWj3U2VADqBmTZwaeYPQ
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjUwLCJ1aWQiOiJmNTIzNTU5OC0xYTRlLTQ4ODMtYTY2Yy0xYjk2ZDA2ZmQ0N2YiLCJydWlkIjoiYWM4NjU0NzQtMDlhNi00OGIzLWExMDktNTJjNTYxZGVkZTc2In0.4wxcx_9EFa0Ul9iapYwxNphQL37590eWveP4_ozVLnM

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=0"
            }

### Create a task [POST /api/projects/{project_id}/tasks]

+ Parameters
    + project_id: `156` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/projects/156/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjUxLCJ1aWQiOiJmNWRiZDg3Yi1hNTE2LTRhOGEtOWVmYS0xMWQxOWFjNTc3N2YiLCJydWlkIjoiYzFmOGQ0ZTQtNWJjMS00OTE1LThiYjgtOTMxOTVhYThhYjJhIn0.x_JpbBwNck2lDg_jMruknWJp9nA3iHExR7HzPCqRRUY
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDgsInVzZXJfaWQiOjUxLCJ1aWQiOiI2YzgwZmQ2Yy0zNzU0LTRmM2EtYTdhZi1jOGIxN2FiODgwZTIiLCJydWlkIjoiNTg4NWYzNzUtMjE2Ni00NWVhLWJmNGYtMmQ4MTYyMmI3MjQ0In0.E74axeY4kJqTgKT96dj8ExRcWt23Ls8z7vIf-hKMLtE
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Visit+Narnia&done=false

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "139",
                "type": "task",
                "attributes": {
                  "id": 139,
                  "name": "Visit Narnia",
                  "position": 21,
                  "deadline": null,
                  "done": false,
                  "project_id": 156
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request returns status code 401
**POST**&nbsp;&nbsp;`/api/projects/157/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Visit+Narnia&done=false

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 403
**POST**&nbsp;&nbsp;`/api/projects/158/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU0LCJ1aWQiOiI1YzllY2MzOC1jMzVlLTQ5OGQtYjIwOC0yNDhmNTFmN2QyYjQiLCJydWlkIjoiOWNkNGQyNGQtZGZmNC00OGExLWIxMTUtY2M5NDIzMTYxOTllIn0.gxkjO5YLgeaXm1FkmCRIdZKB5lvSi5bm1oG0-EnFlZg
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU0LCJ1aWQiOiI5YjI3NDBmMS05NGIzLTQwZDMtOGRmNi03ZDQwMWNlNmI4MzEiLCJydWlkIjoiYjNiOWIxOGUtM2E3NS00Njk4LWJiMjMtMTVhZWFkY2M3NDI3In0.465L7MVDE01bCJRTcWrYv1wnubBbdEwOjNrUt6s4dXs
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Visit+Narnia&done=false

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**POST**&nbsp;&nbsp;`/api/projects/0/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU1LCJ1aWQiOiI2OGUwOWVkYS01ZDE2LTRiMzYtYTg1Yi0zOGQ3ZWY2ZjU1NzgiLCJydWlkIjoiMWJlZmZkMmItZDI2Ny00YWY3LWIzOGMtNDg1YTBlN2VkOGY0In0.2n6DGLv5PaQDybyz35gxglkpLqbBFWFFnlsk-xwkhKc
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU1LCJ1aWQiOiIxNDA3MWQ5Yi1hMmFiLTQwOGYtOGNjNC1mMDUxZWRiODFmZjQiLCJydWlkIjoiZTc5MDg1NTAtYjQwYy00NjRhLTg0YjQtMzU3M2FmNTBjZWMyIn0.FSsee6-ATCrdpocnUAbnnZQV267v_GtMbLFnE8R1O8I
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Visit+Narnia&done=false

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=0"
            }

### Update a task [PUT /api/projects/{project_id}/tasks/{id}]

+ Parameters
    + project_id: `160` (number, required)
    + id: `200` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/api/projects/160/tasks/200`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU2LCJ1aWQiOiJiODY2MzAxYy0xNzRkLTRhMWItYjcxMi1mZjA0NmJkN2NkMTYiLCJydWlkIjoiZTQxY2MzNjAtNmJiYy00N2FiLTkyZGYtNjYzNDVmNWM1ODNiIn0.8nMJvkE0f9IZKVKhQOn9PigkHsuj3Ec9MAGjdfQkz-U
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MDksInVzZXJfaWQiOjU2LCJ1aWQiOiJmMWMxMjc3NC1lMjQ0LTRmYzgtOTdlMS1kMjEwYzVkYTAyZGMiLCJydWlkIjoiZTBkZDg4NjUtMmZlZC00M2ZjLWE4MDQtZTMzYWRkZTJhZGZkIn0.TtOTYgpf81LyENtgLwByOKEwWigPqgckMpDn9_Hlsbw
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Mozart

+ Response 204

+ Request updates the task
**PUT**&nbsp;&nbsp;`/api/projects/161/tasks/220`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjU3LCJ1aWQiOiI2YjgwOWQ3Zi1hYWNlLTRmMzYtODdiOS04MjhiMWI4MGQ2NTQiLCJydWlkIjoiZmRkOTM1NmUtMzk2Mi00MWMzLWI5ZjMtNDQ3NWEzOWViOGI1In0.DD1jz8YHLxyrjfq6oNs5cwax0WXu4-jSyMoe6Ca5hC4
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjU3LCJ1aWQiOiI1MjQwMDkwYS1jMTFmLTQ0ZDYtYWIxMi1iYTJkZjBhZDJmOWUiLCJydWlkIjoiNTI2NDI4ODgtZmU4ZS00ZDFjLWE0MWEtYTIwZGQ3MjNhNjVlIn0.LRvExcZwo23_odxAbwvOPl0nY65nuca9ATbEXIHAgiY
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Mozart

+ Response 204

+ Request returns status code 401
**PUT**&nbsp;&nbsp;`/api/projects/162/tasks/240`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Mozart

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorizeddddd"
            }

+ Request returns status code 403
**PUT**&nbsp;&nbsp;`/api/projects/163/tasks/260`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjYwLCJ1aWQiOiI2NDg3ZThiZS0xZjA2LTRmYmMtOTEwMi0xYWM3ZDc1ZGQ0ZTIiLCJydWlkIjoiNDgwN2NmMzYtYjI1ZS00MWM1LTk1MjctMzIxYzFlMTY4MTBkIn0.qQRJgVYYbX1uiRhuprSxkfxnpxetddoHvZ4h2kwM-y0
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjYwLCJ1aWQiOiIxNTFlY2E5Zi1lOTg4LTQ4MDctYjNkYy0wZTRiYjEzYjdkNjIiLCJydWlkIjoiNjE3NzNhNzMtZDAzMC00MzhmLTkwYmMtZWRhYjBjYjRjMTEyIn0.fX3fuOKCvR_yb4xdzCvq2TQNlXDmUCK2PoMURvrR2mw
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Mozart

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/api/projects/164/tasks/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjYxLCJ1aWQiOiI4M2U1MmJlYy04Y2ZmLTRlZDUtOGRmYy0wYzAxZWI0M2Y5ODAiLCJydWlkIjoiYzIwMzdmMGQtMWM0Ni00N2I0LWJjMTEtN2Y3MGZlNGUwMTkzIn0.HAlOLLRaouDMW9EndoqfFqoy2yIyZfiWAyzIBQ03MK4
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTAsInVzZXJfaWQiOjYxLCJ1aWQiOiJmZGM5YjdhOS0xNDFjLTQzYTgtODY4MC00MGIwMzE2YzQzZTQiLCJydWlkIjoiMjJhZjE3NWItMzRjOS00YTBkLWJlNTMtZGNiMmRiZTEwMWY5In0.ftXzVhtFnbLU31cD572-ImPkscO_vOflTTrYMu5o6U4
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Mozart

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=0 [WHERE \"tasks\".\"project_id\" = $1]"
            }

### Delete a task [DELETE /api/projects/{project_id}/tasks/{id}]

+ Parameters
    + project_id: `165` (number, required)
    + id: `300` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/projects/165/tasks/300`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTEsInVzZXJfaWQiOjYyLCJ1aWQiOiJkM2Q1YjVkMS1mNDc2LTRhNGUtOTUxMy1jOWMwYWU4NGJjYmIiLCJydWlkIjoiYTdhMWY1MzgtYjQyYy00MWQ1LWJiMmYtOTUyODA1N2E1ZTU5In0.i0G6cIF_AQ5q3CfRUnE1Yq3UYPhA3NRuGqfqKW3-geg
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTEsInVzZXJfaWQiOjYyLCJ1aWQiOiI5Zjg5OWE1YS02YjRmLTRmNGUtYmVjMy1mOWI3MTY4NzQ1NTgiLCJydWlkIjoiNTE0ZjlhZTMtYTk1Ni00ZjFkLWIyZTAtOGYwZTQxMWQ4YjA3In0.e_Rjzc6y4MzfSizJUi_dl-pJjX1K4mGegELxmtPisLw
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request returns status code 401
**DELETE**&nbsp;&nbsp;`/api/projects/166/tasks/320`

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

+ Request returns status code 403
**DELETE**&nbsp;&nbsp;`/api/projects/167/tasks/340`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTEsInVzZXJfaWQiOjY1LCJ1aWQiOiI0MzQyM2M5OS00ODVmLTQ5OTctOTk4MC00ZDlhZTI3ZWI4MTkiLCJydWlkIjoiMmZlY2EyNTUtZmEyOS00ZWNhLWJiMDYtZDk3NzU5MWVlNWE4In0.AzVKBtIwObP5gbfcXV-izVvTquqqqi_ZhZ5_B5TE9mE
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTEsInVzZXJfaWQiOjY1LCJ1aWQiOiI1ZWFjNzE4My05MDJjLTRiNWUtOTQ3MC0wZDVkNmU2MjM3MGIiLCJydWlkIjoiNTNiMDk3Y2EtOTljNS00OTJmLWExYWUtYTMzZGEzMDQ1OGZmIn0.Hf5vrWxz0uLusv0KeP01cZYlfuwKcOCWRYDIVd0bbHg
            Content-Type: application/x-www-form-urlencoded

+ Response 403

    + Headers

            Content-Type: text/html

+ Request returns status code 404
**DELETE**&nbsp;&nbsp;`/api/projects/168/tasks/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY2LCJ1aWQiOiI5N2RlM2Y0Yi01NWY1LTQ5NGEtODQyMC1iMjA4NzYyMTViMjIiLCJydWlkIjoiY2E2OTFiYzgtOTMwZi00ZDgwLWI4ZWEtODk5ZGRhY2Y0MGQ4In0.23z4hTgMcFjxMeTpT2nihLRFP02A1lrHUtkXal26uwo
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY2LCJ1aWQiOiJmMWI4NWY0Ni05YmNmLTQ2YmQtYWRlNS1lZWM2MDY5OGU5NDYiLCJydWlkIjoiOWMyYmM5YjktZjhiNC00MzRlLWIwZjYtNmI5ZGJhNDg4NzkyIn0.BilqIbDJN45A6MweDPR65g-EieSiwGWtJ_7U5f4CbQc
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=0 [WHERE \"tasks\".\"project_id\" = $1]"
            }

### Toggles task status [POST /api/projects/{project_id}/tasks/{id}/toggle_status]

+ Parameters
    + project_id: `169` (number, required)
    + id: `380` (number, required)

+ Request returns success
**POST**&nbsp;&nbsp;`/api/projects/169/tasks/380/toggle_status`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY3LCJ1aWQiOiI5MzI1Y2Y3Ni1mZTdkLTQ1YjAtOGNjOS1mNmNhNzQ4ZGJhZjUiLCJydWlkIjoiNGU3OTVkYzktNWY1YS00ZDJlLTliODYtMzhiZDVkZjdjNDE4In0.QNKEFqgODyc1cnW8f17bIuluiO5iEbCceuMfELBq44U
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY3LCJ1aWQiOiJkMmE4Njk1YS0yY2QwLTQ1YjEtOTE1ZS0yZTI1NDhhODFkMzQiLCJydWlkIjoiYWM2MmI3N2QtZmQ0My00MTM3LWExYjEtNTUyMmMyMTJkOTg1In0.CbuPEuffZYJ81s-YNiZpc9R1I-Ex9UnYcPrgiv_pSgo
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json

### Sorts tasks [PATCH /api/projects/{project_id}/tasks/sort]

+ Parameters
    + project_id: `170` (number, required)

+ Request returns status code 200
**PATCH**&nbsp;&nbsp;`/api/projects/170/tasks/sort`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY4LCJ1aWQiOiI0ZWFjMDllNi05NzBkLTQ5ZWItOTBjNC0yZjEzNGQ0MTVmMjgiLCJydWlkIjoiYTllMWZhZDQtYWJmNC00ZDY2LTk1ZjQtZTY4MjQ1YmNhNjY2In0.UE3H9MxZdgjiOCTu_Vgja3ZdVDIkMw_weI4IadXysFY
            Cookie: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDg4NTk5MTIsInVzZXJfaWQiOjY4LCJ1aWQiOiI2NmZkMjMxNi1hM2QwLTRmMzEtYTZkYS00MWY2NTI0YzA5OTYiLCJydWlkIjoiZTI0Mjc5ODktODVmZi00NmUyLWEwOTEtYTA1NmZlODMxYjk3In0.4_ATKSM4K4Mtajg7q6hcag0xhSnTjgMrFZfACVsajbs
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json
