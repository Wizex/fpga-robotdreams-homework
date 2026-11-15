# 2026-11-15T17:20:28.760051500
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-15")

comp = client.get_component(name="moving_max")
comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

