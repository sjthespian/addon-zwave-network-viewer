# Home Assistant Add-on: TuyaGateway

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Click on the three dots in the upper left, then **Repositories**, and add this repository: https://github.com/sjthespian/addon-zwave-network-viewer
3. Find the "Z-Wave Network Viewer" add-on and click it.
4. Click on the "INSTALL" button.

## How to use

1. Generate a long-lived access token
1. In the Z-Wave Network Viewer add-on configuration, perform the following:
    - Add the above token 
2. Click the **Start** button to start the add-on.
3. Check the Log tab to insure the add-on started and is communicating to your MQTT broker.

## Configuration

```yaml
token: ""
```

#### Option `token`

Long-lived Home Assistant access token

For example:

```yaml
token: 1234567890
```

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
