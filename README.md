
# Table of Contents

1.  [README](#orga2d7973)
    1.  [/antennas](#orgd64eaf5)
        1.  [responses](#org791cd0e)
    2.  [/beverages](#org88d3043)
        1.  [responses](#org455b227)


<a id="orga2d7973"></a>

# README

I plan to serve few apis at <http://apis.zavodx.com>

So far the list is

-   /antennas
-   /beverages


<a id="orgd64eaf5"></a>

## /antennas

It returns related information for repeaters located in Turkey with VHF, UHF, APRS, ECHOLINK frequencies. 
API service (GET) is online at <http://apis.zavodx.com/antennas>
List source: <https://www.radyoamatorleri.com/depo/linkver/html/TA_ROLE.html>


<a id="org791cd0e"></a>

### responses

   `/` 
returns all the antennas

1.  city search

    returns all the band type antennas in related city
    
    ex:
    `/city?c=IZMIR`

2.  band search

    returns the related antennas in all cities.
    
    ex:
    `/band?b=APRS`

3.  city and band search

    returns the related antennas in related city
    
    ex:
    `/city_band?c=IZMIR&b=UHF`


<a id="org88d3043"></a>

## /beverages

It returns related recipe for cocktails from [teijo/iba-cocktails](https://github.com/teijo/iba-cocktails). You can also see <https://iba-world.com/iba-cocktails/>.
API service (GET) is online at <http://apis.zavodx.com/beverages>


<a id="org455b227"></a>

### responses

    `/` 
returns all the available beverages

1.  name search

    ex:
    `/name?q=old fashioned`

2.  category search

    ex:
    `/category?q=All Day Cocktail`

