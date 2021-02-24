rule all:
  input: "Eve_baton.txt"

rule Eve:
  input: "Dave_baton.txt"
  output: "Eve_baton.txt"
  shell: "cat {input} > {output}; echo 'Eve passes baton' >> {output};"

rule Dave:
  input: "Cathy_baton.txt"
  output: "Dave_baton.txt"
  shell: "cat {input} > {output}; echo 'Dave passes baton' >> {output};"

rule Cathy:
  input: "Bob_baton.txt"
  output: "Cathy_baton.txt"
  shell: "cat {input} > {output}; echo 'Cathy passes baton' >> {output};"

rule Bob:
  input: "Amy_baton.txt"
  output: "Bob_baton.txt"
  shell: "cat {input} > {output}; echo 'Bob passes baton' >> {output};"

rule Amy:
  output: "Amy_baton.txt"
  shell: "echo 'Amy passes baton' > {output}"



