#! /usr/bin/env nextflow

nextflow.enable.dsl=2

workflow {
  channel.of("H1","H3")
  //| combine(channel.of("N1","N2"))
  //| combine(channel.of(["HA","NA","PB2","PB1","PA","NP","MP","NS"]))
  | view
}