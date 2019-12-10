# README

I plan to serve few apis at http://apis.zavodx.com

So far the list is
- /antennas

## /antennas

It returns related information for repeaters located in Turkey with VHF, UHF, APRS, ECHOLINK frequencies. 

API service (GET) is online at http://apis.zavodx.com/antennas

List source: https://www.radyoamatorleri.com/depo/linkver/html/TA_ROLE.html

### responses

`/`
returns all the avaible antennas

#### city search
returns all the band type antennas in related city

ex:

`/city?c=IZMIR`

#### band search
returns the related antennas in all cities.

ex:

`/band?b=APRS`

#### city and band search
returns the related antennas in related city

ex:

`/city_band?c=IZMIR&b=UHF`


