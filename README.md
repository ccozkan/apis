

# README

I plan to serve few apis at <http://apis.zavodx.com>
So far the list is

-   [antennas](#orge642a7f)
-   [beverages](#orgfa3602c)
-   [radio stations](#org834af16)


<a id="orge642a7f"></a>

## antennas

It returns related information for repeaters located in Turkey with VHF, UHF, APRS, ECHOLINK frequencies. Here is the [source](https://www.radyoamatorleri.com/depo/linkver/html/TA_ROLE.html) used.
API service (GET) is online at <http://apis.zavodx.com/antennas>


### responses

   `/antennas/` 
returns all the antennas

1.  city search

    returns all the band type antennas in related city
    `/antennas/city?c=IZMIR`

2.  band search

    returns the related antennas in all cities.
    `/antennas/band?b=APRS`

3.  city and band search

    returns the related antennas in related city
    `/antennas/city_band?c=IZMIR&b=UHF`


<a id="orgfa3602c"></a>

## beverages

It returns related recipe for cocktails from [teijo/iba-cocktails](https://github.com/teijo/iba-cocktails). You can also see <https://iba-world.com/iba-cocktails/>.
API service (GET) is online at <http://apis.zavodx.com/beverages>


### responses

    `/beverages/` 
returns all the available beverages

1.  name search

    `/beverages/name?q=old fashioned`

2.  category search

    `/beverages/category?q=All Day Cocktail`

3.  search wildcard

    `/beverages/search?q=moj`
    returns beverages those contain 'moj' in their name (like mojito!)


<a id="org834af16"></a>

## radio stations

It returns radio stations with their stream url and other informations.
API service (GET) is online at <http://apis.zavodx.com/radio_stations>


### responses

    `/radio_stations/` 
returns all the available beverages

1.  random

        `/radio_stations/random` 
    returns a random tuning

2.  name search

    `/radio_stations/name?q=slowtime`

3.  genre search

    `/radio_stations/genre?q=rock`

4.  search wildcard

    `/radio_stations/search?q=slowti`

