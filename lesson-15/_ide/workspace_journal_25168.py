# 2026-11-08T22:33:02.535036100
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-15")

client.delete_component(name="moving_max")

vitis.dispose()

