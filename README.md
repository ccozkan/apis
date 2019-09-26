# README

I plan to serve few apis at https://apis.zavodx.com

So far the list is
- /antennas

## /antennas
API service(get only) is online at https://apis.zavodx.com/antennas
Repeaters located in Turkey for VHF, UHF, APRS, ECHOLINK frequencies. 
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


