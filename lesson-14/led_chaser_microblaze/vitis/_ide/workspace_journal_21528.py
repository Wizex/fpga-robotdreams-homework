# 2026-11-15T23:40:34.323389700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado/design_1_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

component = client.get_component(name="app_component")

lscript = component.get_ld_script(path="C:\Users\User\Projects\fpga\lesson-10\led_chaser_microblaze\vitis\app_component\src\lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

vitis.dispose()

