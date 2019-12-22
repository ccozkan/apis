

# README

I provide some API's for some of my projects. They are online at [https://apis.zavodx.com](https://apis.zavodx.com).

The list is

-   [antennas](#orgee0b4ae)
-   [beverages](#org7b3ccd5)
-   [radio stations](#orgeea6c1b)
-   [quotes](#org0123bf5)


<a id="orgee0b4ae"></a>

## antennas

It returns related information for repeaters located in Turkey with VHF, UHF, APRS, ECHOLINK frequencies. Here is the [source](https://www.radyoamatorleri.com/depo/linkver/html/TA_ROLE.html) used.

API service (GET) is online at <http://apis.zavodx.com/antennas>

`/antennas/` returns all the antennas

`/antennas/city?c=IZMIR` returns all the band type antennas in related city

`/antennas/band?b=APRS` returns the related antennas in all cities

`/antennas/city_band?c=IZMIR&b=UHF` returns the related antennas in related city


<a id="org7b3ccd5"></a>

## beverages

It returns related recipe for cocktails from [teijo/iba-cocktails](https://github.com/teijo/iba-cocktails). You can also see <https://iba-world.com/iba-cocktails/>.

API service (GET) is online at <http://apis.zavodx.com/beverages>

`/beverages/` returns all the available beverages

`/beverages/name?q=old fashioned` 

`/beverages/category?q=All Day Cocktail` 

`/beverages/search?q=moj` wild card search, returns beverages those contain 'moj' in their name (like mojito!)


<a id="orgeea6c1b"></a>

## radio stations

It returns radio stations with their stream url and other informations.

API service (GET) is online at <http://apis.zavodx.com/radio_stations>

`/radio_stations/` returns all the available beverages

`/radio_stations/random` returns a random tuning

`/radio_stations/name?q=slowtime` search based on name

`/radio_stations/genre?q=rock` search based on genre

`/radio_stations/country?q=tr` search based on country

`/radio_stations/search?q=slowti` wildcard search


<a id="org0123bf5"></a>

## quotes

Turkish translations of quotes from [this database](https://github.com/dwyl/quotes/blob/master/quotes.json). 

API service (GET) is online at <http://apis.zavodx.com/quotes/random>

`/random` returns a random quote

