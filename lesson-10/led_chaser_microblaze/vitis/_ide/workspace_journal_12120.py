# 2026-11-18T01:38:12.546457900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

