# 2026-11-18T00:30:21.269876900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

