# 2026-11-18T00:35:30.978076500
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

vitis.dispose()

