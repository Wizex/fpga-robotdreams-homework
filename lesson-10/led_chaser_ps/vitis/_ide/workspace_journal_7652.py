# 2026-11-01T17:43:32.216559200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="led_chaser")
status = platform.build()

comp = client.get_component(name="led_chaser_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

