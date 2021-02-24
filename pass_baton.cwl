#! /usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
input:
  Amy:
    type: string
    inputBiding:
      position:1
outputs: []
  