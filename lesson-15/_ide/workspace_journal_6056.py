# 2026-11-08T16:08:29.207365900
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-15")

comp = client.create_hls_component(name = "moving_average",part = "xc7z020clg400-1",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\User\Projects\fpga\lesson-15\moving_average\hls_config.cfg")

cfg.set_values(key="syn.file", values=["moving_average.cpp"])

cfg.set_values(key="syn.file", values=["moving_average.cpp", "moving_average.h"])

cfg.set_values(key="tb.file", values=["moving_average_tb.cpp"])

cfg.set_values(key="syn.file", values=["moving_average.cpp", "moving_max.h"])

cfg.set_values(key="syn.file", values=["moving_max.cpp", "moving_max.h"])

cfg.set_values(key="tb.file", values=["moving_max_tb.cpp"])

