import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.SensorNode;
import inet.physicallayer.wireless.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;

network SmartHome
{
    @display("bgb=900,600");

    submodules:

        // Temperature / Humidity sensors
        temp1: SensorNode {
            @display("p=120,100;i=misc/sensor");
        }

        temp2: SensorNode {
            @display("p=280,100;i=misc/sensor");
        }

        temp3: SensorNode {
            @display("p=440,100;i=misc/sensor");
        }

        temp4: SensorNode {
            @display("p=600,100;i=misc/sensor");
        }

        // Motion / Occupancy sensors
        motion1: SensorNode {
            @display("p=120,250;i=misc/sensor");
        }

        motion2: SensorNode {
            @display("p=280,250;i=misc/sensor");
        }

        motion3: SensorNode {
            @display("p=440,250;i=misc/sensor");
        }

        // Smoke / Environmental sensors
        smoke1: SensorNode {
            @display("p=120,400;i=misc/sensor");
        }

        smoke2: SensorNode {
            @display("p=280,400;i=misc/sensor");
        }

        // Actuators
        light: SensorNode {
            @display("p=600,250;i=status/bulb");
        }

        hvac: SensorNode {
            @display("p=600,400;i=misc/sensor");
        }

        alarm: SensorNode {
            @display("p=440,400;i=misc/sensor");
        }

        // Smart-home gateway
        gateway: SensorNode {
            @display("p=360,300;i=misc/sensorgateway");
        }

        configurator: Ipv4NetworkConfigurator {
            @display("p=780,100");
        }

        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=780,180");
        }

        visualizer: IntegratedMultiVisualizer {
            @display("p=780,260");
        }
}