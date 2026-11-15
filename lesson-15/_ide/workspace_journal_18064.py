# 2026-11-08T22:56:36.610215100
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-15")

comp = client.get_component(name="moving_max")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

vitis.dispose()

