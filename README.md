# My Shell Scripts

## myip
It prints your ip address you your terminal.
```
> myip
192.168.23.1/23
```

## clh
It removes all duplicate commands in your zsh history.
You can modify the history to take history from your bash_history also by simply modifying the script.

```
> clh
Initial History Count
233
Final History Count
173
```

## crypto

It shows all current values of all cryptocurrencies in any currency you like.
For eg. if you want to see value of Bitcoin in USD you can.
It has support for 12 other cryptocurrencies like Etherium , Litecoin,
XRP, Tether, Cardino etc. and you can see its value in more than 100 
different currencies like USD, NRP, INR, AUD etc.

### Requirements
It requires <b>rofi</b>.
So install rofi first to make it work.

```
> crypto
```
Then the following rofi prompts appear<br>
<img src="./images/crypto.png">
<img src="./images/currency.png"><br>
Finally the result is displayed in the terminal as follow 
```
> crypto
USD 3520
```

## hotspot.sh
Creates hotspot with ssid Hotspot and password <b>hello_world</b>
```
> hotspot.sh
Hotspot Created
Ssid: Hotspot
Password: hello_world
```

