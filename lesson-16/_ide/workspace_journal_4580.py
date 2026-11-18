# 2026-11-15T01:09:42.370809
import vitis

client = vitis.create_client()
client.set_workspace(path="lesson-16")

platform = client.create_platform_component(name = "people_counter_platform",hw_design = "$COMPONENT_LOCATION/../people_counter_system/people_counter_system.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

platform = client.get_component(name="people_counter_platform")
status = platform.build()

comp = client.create_app_component(name="people_counter_app",platform = "$COMPONENT_LOCATION/../people_counter_platform/export/people_counter_platform/people_counter_platform.xpfm",domain = "standalone_microblaze_0")

status = platform.build()

comp = client.get_component(name="people_counter_app")
comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="people_counter_app")

client.delete_component(name="componentName")

comp = client.create_app_component(name="people_counter_app",platform = "$COMPONENT_LOCATION/../people_counter_platform/export/people_counter_platform/people_counter_platform.xpfm",domain = "standalone_microblaze_0",template = "empty_application")

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

