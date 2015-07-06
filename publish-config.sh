#!/bin/bash
mosquitto_pub -h localhost -u linh -P secret -p 1883 -t linh/home/config -m '[ {
        "type" : "on_off",
        "value" : false,
        "name" : "Floorlamp 1",
        "topic" : "linh/home/devices/livingroom/floorlamp1/value",
        "id" : "floorlamp1"
      }, {
        "type" : "dimmer",
        "value" : 0,
        "name" : "Floorlamp 2",
        "topic" : "linh/home/devices/livingroom/floorlamp2/value",
        "id" : "floorlamp2"
      }, {
        "type" : "on_off",
        "value" : false,
        "name" : "Green Lamp",
        "topic" : "linh/home/devices/livingroom/green_lamp/value",
        "id" : "green_lamp"
      }, {
        "type" : "on_off",
        "value" : false,
        "name" : "Cabinet Light left",
        "topic" : "linh/home/devices/livingroom/cabinetlight_left/value",
        "id" : "cabinetlight_left"
      }, {
        "type" : "on_off",
        "value" : false,
        "name" : "Cabinet Light right",
        "topic" : "linh/home/devices/livingroom/cabinetlight_right/value",
        "id" : "cabinetlight_right"
      }, {
        "type" : "thermostat",
        "value" : 16,
        "name" : "Livingroom",
        "topic" : "linh/home/devices/livingroom/thermostat/value",
        "id" : "thermostat_wohnzimmer"
      }, {
        "type" : "thermostat",
        "value" : 16,
        "name" : "Bathroom",
        "topic" : "linh/home/devices/bathroom/thermostat/value",
        "id" : "thermostat_badezimmer"
      }]' -r
