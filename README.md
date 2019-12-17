

# README

I plan to serve few apis at <http://apis.zavodx.com>

So far the list is

-   [antennas](#orged9ba65)
-   [beverages](#org795b149)
-   [radio stations](#org64b9a47)


<a id="orged9ba65"></a>

## antennas

It returns related information for repeaters located in Turkey with VHF, UHF, APRS, ECHOLINK frequencies. Here is the [source](https://www.radyoamatorleri.com/depo/linkver/html/TA_ROLE.html) used.

API service (GET) is online at <http://apis.zavodx.com/antennas>


### responses

`/antennas/` returns all the antennas

`/antennas/city?c=IZMIR` returns all the band type antennas in related city

`/antennas/band?b=APRS` returns the related antennas in all cities

`/antennas/city_band?c=IZMIR&b=UHF` returns the related antennas in related city


<a id="org795b149"></a>

## beverages

It returns related recipe for cocktails from [teijo/iba-cocktails](https://github.com/teijo/iba-cocktails). You can also see <https://iba-world.com/iba-cocktails/>.

API service (GET) is online at <http://apis.zavodx.com/beverages>


### responses

`/beverages/` returns all the available beverages

`/beverages/name?q=old fashioned` 

`/beverages/category?q=All Day Cocktail` 

`/beverages/search?q=moj` wild card search, returns beverages those contain 'moj' in their name (like mojito!)


<a id="org64b9a47"></a>

## radio stations

It returns radio stations with their stream url and other informations.

API service (GET) is online at <http://apis.zavodx.com/radio_stations>


### responses

`/radio_stations/` returns all the available beverages

`/radio_stations/random` returns a random tuning

`/radio_stations/name?q=slowtime` search based on name

`/radio_stations/genre?q=rock` search based on genre

`/radio_stations/search?q=slowti` wildcard search

