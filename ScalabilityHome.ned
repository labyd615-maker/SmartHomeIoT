import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.SensorNode;
import inet.physicallayer.wireless.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;

network ScalabilityHome
{
    parameters:
        int numSensors = default(5);
        @display("bgb=950,700");

    submodules:

        sensor[numSensors]: SensorNode {
            @display("i=misc/sensor");
        }

        light: SensorNode {
            @display("p=180,590;i=status/bulb");
        }

        hvac: SensorNode {
            @display("p=320,590;i=misc/sensor");
        }

        alarm: SensorNode {
            @display("p=460,590;i=misc/sensor");
        }

        gateway: SensorNode {
            @display("p=650,590;i=misc/sensorgateway");
        }

        configurator: Ipv4NetworkConfigurator {
            @display("p=850,100");
        }

        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=850,180");
        }

        visualizer: IntegratedMultiVisualizer {
            @display("p=850,260");
        }
}