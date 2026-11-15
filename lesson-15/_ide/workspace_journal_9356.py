# 2026-11-08T16:35:00.952641
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-15")

comp = client.get_component(name="moving_max")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

cfg = client.get_config_file(path="/c:/Users/User/Projects/fpga/lesson-15/moving_average/hls_config.cfg")

cfg.set_values(key="relative_roots", values=[])

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

cfg.set_value(section="hls", key="syn.top", value="moving_max")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

cfg.set_value(section="hls", key="syn.compile.pipeline_loops", value="0")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

