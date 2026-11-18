# 2026-11-18T00:34:00.307564200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

