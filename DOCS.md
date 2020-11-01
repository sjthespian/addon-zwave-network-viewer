# Home Assistant Add-on: TuyaGateway

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Click on the three dots in the upper left, then **Repositories**, and add this repository: https://github.com/sjthespian/addon-zwave-network-viewer
3. Find the "Z-Wave Network Viewer" add-on and click it.
4. Click on the "INSTALL" button.

## How to use

1. Click the **Start** button to start the add-on.
2. Check the Log tab to insure the add-on started.
3. Click on the "Open Web UI" link to access the web interface.

## Configuration

At a minimum the Home Assistant URL and a long-lived access token must be specified.

```
haurl: https://homeassistant.example.com:8123
token: 123456789abcdef
ssl: false
certfile: fullchain.pem
keyfile: privkey.pem
debug: false
```

### Option: haurl

The URL of your Home Assistant instance. If you do not have a DNS entry that resolves for it, use the IP.

Example:
```
haurl: https:192.168.0.10:8123
```

### Option: token

A long-lived authentication token to access HA. This can be created by clicking on your profile icon in the HA web interface and scrolling down to the bottom. Select "CREATE TOKEN" under the "Long-Lived Access Tokens" section.

***NOTE: You will only be able to see the token when you generate it. Save this token in a safe place as you will have to create a new one if you lose it.***

### Option: ssl

Set to true to enable SSL support in the viewer.

### Option: certfile

A file containing a certificate, including its chain. Leave empty to disable SSL.

### Option: keytfile

A file containing the private key. Leave empty to disable SSL.

### Option: debug

Set to true to enable debugging output in the logs

## Known issues and limitations

- None

## Support

Got questions?

You have several options to get them answered:

- The [Z-Wave Network Viewer][zwave-network-viewer].
- The [Home Assistant Discord Chat Server][discord].
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

In case you've found a bug, please [open an issue on our GitHub][issue].

[discord]: https://discord.gg/c5DvZ4e
[forum]: https://community.home-assistant.io
[issue]: https://github.com/home-assistant/hassio-addons/issues
[reddit]: https://reddit.com/r/homeassistant
[zwave-network-viewer]: https://github.com/elad-bar/ha-zwave-network
